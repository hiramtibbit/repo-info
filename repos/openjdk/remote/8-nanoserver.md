## `openjdk:8-nanoserver`

```console
$ docker pull openjdk@sha256:84b6d3487b6a6b4c9bca4c2404fc2f179a8cb9aab3508d79a6b3a98c647246ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:8-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:85dcbc6a6dd61c89478dd72d050e171fa3408256dcc440d04f397caae0bf216f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **544.1 MB (544138744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f6a50afa8b4f5e5e6696343c5e0793b1f574b07a98641b69002bee571b39bc`
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
# Wed, 10 Oct 2018 11:00:58 GMT
ENV JAVA_VERSION=8u181
# Wed, 10 Oct 2018 11:00:59 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Wed, 10 Oct 2018 11:01:00 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 10 Oct 2018 11:01:02 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Wed, 10 Oct 2018 11:02:13 GMT
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
	-	`sha256:af6f2fecb38980bef5698d73e8023cf5e0e9f3d917e48030516dc49bc10364b1`  
		Last Modified: Wed, 10 Oct 2018 11:13:01 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c866400394b1ec2b3e4f0ff2733691b2129dc022e28b6309b4125e738e0842`  
		Last Modified: Wed, 10 Oct 2018 11:13:01 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc10a6ec5fa2debd99f9e985a5d1719ebccc85b27093910e15068bb076cf5ba`  
		Last Modified: Wed, 10 Oct 2018 11:13:02 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101c214bf83151f0f97ff210ab201d0d145950cdb87ea03874a13d7b5a2722bf`  
		Last Modified: Wed, 10 Oct 2018 11:13:01 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41799af5dd749e4811a56767220aa096fa5b49ab89e94c8c964be5ec8d0210e`  
		Last Modified: Wed, 10 Oct 2018 11:13:22 GMT  
		Size: 106.9 MB (106933151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
