## `openjdk:9-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:dcf943e6c70e8e31aad0149f4cdc87512d26337ec7a129d004b886f192618e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `openjdk:9-jdk-nanoserver` - windows version 10.0.14393.2248; amd64

```console
$ docker pull openjdk@sha256:1ef57dda1ffc4c89e16eaa50f3458377f8c5af3c1b5ac6d6b4d79e6d5a8a9ec3
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **611.8 MB (611759402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d4b0271dbac4787acbde3783b264f8b8ac752bc9b3bbb98047ca986f85c17d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:11:43 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:55:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 10 May 2018 09:56:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 10 May 2018 09:56:22 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 10 May 2018 09:56:44 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 10 May 2018 09:56:45 GMT
ENV JAVA_VERSION=9.0.4
# Thu, 10 May 2018 09:56:45 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.4-1
# Thu, 10 May 2018 09:56:46 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.4-1.b11.ojdkbuild.windows.x86_64.zip
# Thu, 10 May 2018 09:56:47 GMT
ENV JAVA_OJDKBUILD_SHA256=1333ab5bccc20e9043f0593b001825cbfa141f0e0c850d877af6b8e2c990cb47
# Thu, 10 May 2018 09:58:28 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 10 May 2018 09:58:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58518d66816013a4ae1ec4ef454beff05e957b515f6c364b45fe76b8a527e022`  
		Last Modified: Mon, 07 May 2018 18:11:43 GMT  
		Size: 164.9 MB (164879119 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5103fe12c5d5b7e7e3ac7c4ccd5eb2bb702cda6e059223bed89c8286737936de`  
		Last Modified: Thu, 10 May 2018 10:19:37 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250d5a4932e67d69cd5c1b42383010827baf5e6b0557acd9c647a5b0d9dd9c15`  
		Last Modified: Thu, 10 May 2018 10:19:37 GMT  
		Size: 920.3 KB (920347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f39f3ab0ea78fece3ac891e614456acffdfb12922ad4d9c772037a0e4ddcc28`  
		Last Modified: Thu, 10 May 2018 10:19:36 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30797e4f650cc90c40482b74bd189fdd8d6ebea9c4f40de9fa5c7813797cb17a`  
		Last Modified: Thu, 10 May 2018 10:19:35 GMT  
		Size: 833.0 KB (833047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dda6fd19f57bbe843ffe84f47f5db3efd5d2bb1e65331123927e8fef28e5424`  
		Last Modified: Thu, 10 May 2018 10:19:34 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6703f2536bd5b0d1be16f9a6554b2d19512ce56a098f2a6828e437f5e2929ef1`  
		Last Modified: Thu, 10 May 2018 10:19:32 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e3da18bd5cab4a4095d1a079962ab74fa30eafe988c5b189ee338651241bfd`  
		Last Modified: Thu, 10 May 2018 10:19:32 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b033e0366a61bfa8fddf925115fad7b75e1a4b23cb023bdc579ad6d2b7d348`  
		Last Modified: Thu, 10 May 2018 10:19:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d3f2f1a70328e9523c048e5e49a853e9413eefb4ea3a4ca661f82d7edaf348`  
		Last Modified: Thu, 10 May 2018 10:19:53 GMT  
		Size: 192.4 MB (192429300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c34fbc4fb3adf35adc18007c192618e54c9d8f88c3315c0077b49225d57429`  
		Last Modified: Thu, 10 May 2018 10:19:32 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
