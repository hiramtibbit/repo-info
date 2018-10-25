## `openjdk:8u191-nanoserver`

```console
$ docker pull openjdk@sha256:39b2f267b071d4b43c5cfa6a0b254501eb2aa857fcdf145c5250d4fa9faa099e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:8u191-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:4f650503307ff6a04034d8ec55b4a9ce58e077e76ad8bc681c4d859f38799d4d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **544.3 MB (544294968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885c86ee91624d454548ea887c94ea9d9e07620f066609c077149c4fe375745e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 10:53:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:54:03 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 10 Oct 2018 10:54:04 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 10 Oct 2018 10:54:36 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Oct 2018 09:22:37 GMT
ENV JAVA_VERSION=8u191
# Thu, 25 Oct 2018 09:22:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Thu, 25 Oct 2018 09:22:39 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Thu, 25 Oct 2018 09:22:40 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Thu, 25 Oct 2018 09:24:09 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:84ae235f2e45284e5e9ac7a3cbff5c49b4aee1b6496cc598c15ea9ad88e2b5ac`  
		Last Modified: Wed, 10 Oct 2018 11:10:33 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe9d05f2ad759d8d4c37c5d029e154d9385831572760ac881edb4b67517c572`  
		Last Modified: Wed, 10 Oct 2018 11:10:31 GMT  
		Size: 944.1 KB (944108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbfba656400516a1ba3b3be78b696392bc2877c8a7c67cc5ebcc5b4ee5a46f8`  
		Last Modified: Wed, 10 Oct 2018 11:10:31 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d9bae2dd076724c40453141c9b7bab5b2cea8729dca56c2c02e3f66bb2fa0e`  
		Last Modified: Wed, 10 Oct 2018 11:10:31 GMT  
		Size: 859.0 KB (858959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8785b7163c782ae1fa6f542aa883f2c0ae9117996e3b03802b978b7339c21d4e`  
		Last Modified: Thu, 25 Oct 2018 09:28:18 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63304999aa9b32fb4a3b67c08a3cd678f334af7d136b7f563721046b2f55bb22`  
		Last Modified: Thu, 25 Oct 2018 09:28:18 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9a58553581210c6ed1ebb27c94013b7dc337782e76445127c9408886a2e59d`  
		Last Modified: Thu, 25 Oct 2018 09:28:18 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119fef16acea4167d6f33070a234fcc43b78e59d6918dc0d9ec00afb5098eea1`  
		Last Modified: Thu, 25 Oct 2018 09:28:18 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bf82a8aa42b1ad1caa13ddd7fab6cb9f425172f9680fabc96df4a03a50008f`  
		Last Modified: Thu, 25 Oct 2018 09:28:36 GMT  
		Size: 107.1 MB (107089392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
