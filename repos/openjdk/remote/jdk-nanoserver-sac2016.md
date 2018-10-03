## `openjdk:jdk-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:5fb8a7ac5aebc9f971765d38eccd6cfcd23f6c52b2f345aadcc99a2ce3e3abef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:jdk-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:a711b09c30a420c0633ebfe925f2db9cc8b3dc7e5b94fd3c32efe83702ea6803
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **710.3 MB (710273221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:371a10656bd4bcadb6071bcbaa8b8ea02b2bab25fb812b3177ed3cedddd49f49`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 10:13:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:14:40 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 13 Sep 2018 10:14:41 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 13 Sep 2018 10:15:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 13 Sep 2018 10:15:13 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 13 Sep 2018 10:15:14 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.2-1
# Thu, 13 Sep 2018 10:15:15 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.2-1.b13.ojdkbuild.windows.x86_64.zip
# Thu, 13 Sep 2018 10:15:16 GMT
ENV JAVA_OJDKBUILD_SHA256=39801db76f04b9f1491b0d0a64258535f14e319a3cd08d3e161b18a6af7a842d
# Wed, 03 Oct 2018 10:55:21 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 03 Oct 2018 10:55:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d47ca3c2a708c20309f263de7441f23acb1e8b76c56c75bcc314d2af593e2d17`  
		Last Modified: Thu, 13 Sep 2018 10:33:11 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6eaaad60d734596ea47eea09d40af73c833cb3019c782bc0510964410c6785`  
		Last Modified: Thu, 13 Sep 2018 10:33:10 GMT  
		Size: 951.7 KB (951692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b07773ccb066e2aaaf304916f09aab90129ae4af0460774cbf309a762f0962`  
		Last Modified: Thu, 13 Sep 2018 10:33:09 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6200b08a2f7e952484c8bad696375ce2bdb9d3da13bb4f1fb697aa3eefbf08a`  
		Last Modified: Thu, 13 Sep 2018 10:33:10 GMT  
		Size: 863.6 KB (863623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152b4a0a4b29d4285574f62f4586acec07492403f4cb050b2f32ecc9e224e04c`  
		Last Modified: Thu, 13 Sep 2018 10:33:09 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a84193e9695d3fbd27a3b21848b74221c291a713e3813f13ee1b831e7f3e96`  
		Last Modified: Thu, 13 Sep 2018 10:33:06 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a64268f7a8d3c25dfe2adf935bd28b918956ee248fb91954860ecf51c756800`  
		Last Modified: Thu, 13 Sep 2018 10:33:06 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f2ffd53d8fc7d4940fbcb1fc8956e6089ac2379843acf85e5e34dbe4e5b4da`  
		Last Modified: Thu, 13 Sep 2018 10:33:06 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ddf3647b99c1ad1a92f171f2fff73d0e8304f0063fedcde023fc137659aac`  
		Last Modified: Wed, 03 Oct 2018 11:14:38 GMT  
		Size: 275.2 MB (275226294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447f8a22b438f379e4c78d75addf6ec181554220da40812470d0ddf0ff68ea1d`  
		Last Modified: Wed, 03 Oct 2018 11:13:39 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
