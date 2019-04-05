## `openjdk:13-ea-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:d603f27ee8971acea698bafe24ba6b2725270c113b591dceada2764f63af7a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1029; amd64

### `openjdk:13-ea-windowsservercore-1709` - windows version 10.0.16299.1029; amd64

```console
$ docker pull openjdk@sha256:21e78166088176545dd1080fd0621322c8da6ad3e89b40f439bf47471253f878
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3414343744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8296b15e26786a55b9ed62fcee6c1ad5c948129174728dc27e5331aa67d488dc`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:07:46 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:07:48 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:08:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 05 Apr 2019 09:19:10 GMT
ENV JAVA_VERSION=13-ea+15
# Fri, 05 Apr 2019 09:19:11 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_windows-x64_bin.zip
# Fri, 05 Apr 2019 09:19:13 GMT
ENV JAVA_SHA256=24d9798529faf348bd3b66ad99eeea986cc6776dfb16b215310efd360e50fa61
# Fri, 05 Apr 2019 09:21:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 05 Apr 2019 09:21:24 GMT
CMD ["jshell"]
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
	-	`sha256:447d66808d19dc7d42a62bfafa6cd128cd924ab86c93d4ba8c29e16c5e0f15e1`  
		Last Modified: Thu, 28 Mar 2019 11:03:45 GMT  
		Size: 4.8 MB (4799433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f217594fb26f582630645d54b5430e01fbcd6036c7b5b6f2099c8655fc3437b`  
		Last Modified: Thu, 28 Mar 2019 11:03:42 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542219958719a387de5e217d15116f6f1645cd9048653e6cbc65b518fa4ae6c5`  
		Last Modified: Thu, 28 Mar 2019 11:03:44 GMT  
		Size: 4.8 MB (4762787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c10de342d87956994976cd3c695b70cfe6ab478a9653bfa97ed51a9f929a41`  
		Last Modified: Fri, 05 Apr 2019 09:33:00 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a0c49220229f53cb4922436552c0bdc135dc53828a2e8977498a31ecb5bf2`  
		Last Modified: Fri, 05 Apr 2019 09:33:00 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52352ea37ad31060879f96cda71af6708cf1844bde11cc1c66d0c2303a15144`  
		Last Modified: Fri, 05 Apr 2019 09:33:00 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c3e160407ac42e2a87e0fe070f7a3e6bc82cd63c2bfab6025c1b14e112d0ac`  
		Last Modified: Fri, 05 Apr 2019 09:34:04 GMT  
		Size: 193.9 MB (193922595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534524777c506dbb769691dc5c4830ab61bbb7ff8e1115f545f86b57787f8db2`  
		Last Modified: Fri, 05 Apr 2019 09:33:00 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
