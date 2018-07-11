## `openjdk:8u171-jdk-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:abc10a7a686386f3e58785e1ffc15829107804ddda93cc4f640bd692e6865d8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `openjdk:8u171-jdk-nanoserver-sac2016` - windows version 10.0.14393.2363; amd64

```console
$ docker pull openjdk@sha256:faf7b2cc4a6c0e270d0f28b7e1ceed7cf2b3d673f54d746b9ce32bebc38b0796
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.2 MB (528224713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1abaf64098a201f77d4a478491e0263750c1589426e4dc3e6f12f2dba5d654ae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:44:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Jul 2018 09:45:40 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 11 Jul 2018 09:45:41 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Jul 2018 09:46:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Jul 2018 09:52:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 09:52:05 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Wed, 11 Jul 2018 09:52:06 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Wed, 11 Jul 2018 09:52:07 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Wed, 11 Jul 2018 09:53:15 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c00083f7064e157d9aa12ed2cde81fc21da017ab3b1d2d05cf45ee282d465ddd`  
		Last Modified: Wed, 11 Jul 2018 09:56:07 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d7a6645036c8c0f4a1d6d442c92a0d6214d2cb7d46da2abc9bcd951455fa57`  
		Last Modified: Wed, 11 Jul 2018 09:56:06 GMT  
		Size: 930.8 KB (930778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd0ad8d0a8d35c51bbd7a4f1ac2990362b3b6d022d308e7612624b35b34470c`  
		Last Modified: Wed, 11 Jul 2018 09:56:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcae2d73248ed8cb8b131362bdf56cf33e83e1a65bcc40aa7a11c8c87a8452b`  
		Last Modified: Wed, 11 Jul 2018 09:56:06 GMT  
		Size: 846.2 KB (846242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268e33889edfbacc80b1593fb432e0d9b08d943543fabed64ba9ec86cb052f22`  
		Last Modified: Wed, 11 Jul 2018 09:58:59 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3420e4aebbc7f9805ca065d8b2922a9ba526a5076ceaa456c320b51883c75b`  
		Last Modified: Wed, 11 Jul 2018 09:58:59 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4d928a57acb5ad45022f919e1e0a6929e9debea794469c07e67c99d506ef04`  
		Last Modified: Wed, 11 Jul 2018 09:58:59 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b795569c28c7d55c7a435243689ffe1f699310c5833a67582e102f4b55c72185`  
		Last Modified: Wed, 11 Jul 2018 09:58:59 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c467c2417f5e6653059ab926445591898abc3f6f2de41aa067e1ad0128fe0c42`  
		Last Modified: Wed, 11 Jul 2018 09:59:13 GMT  
		Size: 106.9 MB (106920933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
