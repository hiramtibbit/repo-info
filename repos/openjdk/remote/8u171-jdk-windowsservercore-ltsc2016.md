## `openjdk:8u171-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:d99fd642bfa31f1dd91263efc5431cc61677a5dbe56a9c16b39ed7b9cda79fc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `openjdk:8u171-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull openjdk@sha256:b5c9b37cea319a3c21f87acb17a7986aa225702da0c5d5e94ecb62812caff326
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5600389259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a18b52af6219333edc73fe72279b3bb8c8f9099bac95969e2983769077521c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Sat, 16 Jun 2018 10:18:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Jun 2018 10:18:58 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 16 Jun 2018 10:21:51 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 16 Jun 2018 10:34:04 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 10:34:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Sat, 16 Jun 2018 10:34:06 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Sat, 16 Jun 2018 10:34:07 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Sat, 16 Jun 2018 10:37:28 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Wed, 13 Jun 2018 00:36:30 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2f081cda9e78f379ae3f7a2238f310ca91bbbac2c32d6e990eb6b15df6c2df4b`  
		Last Modified: Sat, 16 Jun 2018 10:42:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d735f69af604295b7f6269c8995a8a00c86ac47630ed93a86d8569c5630bb13a`  
		Last Modified: Sat, 16 Jun 2018 10:42:21 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ad5c8c2e88d71e74046a3265a344d6cdd729f89cf9dbad61cef87b36117ed3`  
		Last Modified: Sat, 16 Jun 2018 10:42:23 GMT  
		Size: 5.0 MB (5009235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c202b879a93481479511a38e7c412917c3be5bb48f3df36a5737cff332a73e9`  
		Last Modified: Sat, 16 Jun 2018 10:45:54 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b8cfdf940d360eb4725b82ffa3b87933a9570cc650d6fa48fff701e8fe3639`  
		Last Modified: Sat, 16 Jun 2018 10:45:54 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e9c3312e3ad1798af5276c5aa9fc4fc81e0668d3d9a5748027b4df24e37e9`  
		Last Modified: Sat, 16 Jun 2018 10:45:54 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9309df7de62fe21e63f9a7051eab7f3ecea4b81bb4bc90dd05e27483a3304d55`  
		Last Modified: Sat, 16 Jun 2018 10:45:55 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ec91bb14cd85a49c2509ccaa14bbdaa6423a031a180487e8653d96573e9ec3`  
		Last Modified: Sat, 16 Jun 2018 10:46:10 GMT  
		Size: 111.1 MB (111067544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
