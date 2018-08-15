## `openjdk:10-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:e560c6774c9829ee3f65e62715b193f35f551500a2bddd54fcb8a7d2fc9962ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `openjdk:10-jdk-nanoserver` - windows version 10.0.14393.2430; amd64

```console
$ docker pull openjdk@sha256:260aece18ac23364d096db0349085ba9659f9f917c6fd4bb338e1127086a6828
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **697.4 MB (697400740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ec2fd8f26b7c36e53e65e61b6ff0f9a755c4f30bb50d076e555bfae381948e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:43:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Aug 2018 09:44:34 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 15 Aug 2018 09:44:35 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 15 Aug 2018 09:45:04 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 15 Aug 2018 09:45:04 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 15 Aug 2018 09:45:05 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.2-1
# Wed, 15 Aug 2018 09:45:06 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.2-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 15 Aug 2018 09:45:07 GMT
ENV JAVA_OJDKBUILD_SHA256=39801db76f04b9f1491b0d0a64258535f14e319a3cd08d3e161b18a6af7a842d
# Wed, 15 Aug 2018 09:47:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 15 Aug 2018 09:47:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:82e4f9af58cb76c5ad8ef2e3e09f4256ab17e1c38cc0ed0d04cb7b509b76fe56`  
		Last Modified: Wed, 15 Aug 2018 09:55:53 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dea611af6cbed847182a2e78f094fc31e1d884599dd19562db6332e5862ddf`  
		Last Modified: Wed, 15 Aug 2018 09:55:51 GMT  
		Size: 935.3 KB (935309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90a99d2131987835ea1e63e665a75f4b7d1b432152edb1d2ed07b1fc4267bfd`  
		Last Modified: Wed, 15 Aug 2018 09:55:50 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4a458463d6d590d08c17052586a8c56aacae7216e9c5db8bfca3eb4b69051a`  
		Last Modified: Wed, 15 Aug 2018 09:55:52 GMT  
		Size: 847.9 KB (847865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d00a2f64ce3ac20fa1095936f78bf5f2547902bcb1627866d9c79999f8c4b4`  
		Last Modified: Wed, 15 Aug 2018 09:55:50 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764905b38d747228993497ab2e792bdb900ab99cc6b5c76896bda93ded60af48`  
		Last Modified: Wed, 15 Aug 2018 09:55:48 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5688552daf89687d6957b27d5c3179df8f472ff55541ed0850e8fac9042823`  
		Last Modified: Wed, 15 Aug 2018 09:55:48 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f0d83b314ab3146c7c9802e75cdc4630e6e00325949613aa20ea767d230369`  
		Last Modified: Wed, 15 Aug 2018 09:55:48 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c4dc897cf2721734a5bf5a4ebcefa290483d2ddecf397c51a4b298306fd9e3`  
		Last Modified: Wed, 15 Aug 2018 09:56:15 GMT  
		Size: 275.1 MB (275135913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234bbbcb5cf302feb35920891e86b994e9d45674af373ba3dd4c6dfb6dccc95a`  
		Last Modified: Wed, 15 Aug 2018 09:55:48 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
