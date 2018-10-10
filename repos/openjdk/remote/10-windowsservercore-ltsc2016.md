## `openjdk:10-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:e87add7af7a7f9726f1ea7f61815b698beebc9a1574ccd60e15e1bfbd068d883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:10-windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:2251296a912344bf1c32e6bcd8dad07ed1b4dfd02b24840244d0c866b8fef985
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5886045013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8340965a19ae4be010a49c49e2d093fefeee894080344e397a93dd189f2ab1e4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:45:07 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 10 Oct 2018 10:46:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 10 Oct 2018 10:46:29 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 10 Oct 2018 10:46:30 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.2-1
# Wed, 10 Oct 2018 10:46:32 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.2-1.b13.ojdkbuild.windows.x86_64.zip
# Wed, 10 Oct 2018 10:46:33 GMT
ENV JAVA_OJDKBUILD_SHA256=39801db76f04b9f1491b0d0a64258535f14e319a3cd08d3e161b18a6af7a842d
# Wed, 10 Oct 2018 10:49:31 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Wed, 10 Oct 2018 10:49:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1915dd474f299f58e6e85bc8ac7f335e9f18b175a4829b4dd8db604fe56e79ff`  
		Last Modified: Wed, 10 Oct 2018 11:07:57 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532c03209e5c7a33b2f0e4463bd8b639cef417b5baf13c83b9ab5ebd34ce693d`  
		Last Modified: Wed, 10 Oct 2018 11:07:59 GMT  
		Size: 5.1 MB (5092274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e141a705521694ecfc830ceef1c58c32c94e26610ad0e8eb0ab7ee6089a8c051`  
		Last Modified: Wed, 10 Oct 2018 11:07:57 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb42c64ae3b2e5c6a90e2fe6b92febb5a6bed851923b1b1df4a1842095afbae0`  
		Last Modified: Wed, 10 Oct 2018 11:07:54 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6f40a7612b6022523f432ee758efdbc4e9776c705e16788593096d2b1908`  
		Last Modified: Wed, 10 Oct 2018 11:07:54 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca65f99d8ba450c4906db5ea9b3582ffa4f02629f0faff4d2c89315bd95bcaa`  
		Last Modified: Wed, 10 Oct 2018 11:07:54 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95a1c670ab9a8e66b5bd50a2b2fb92535d02fd5d7d524e3a4c5874e4ebfa4e3`  
		Last Modified: Wed, 10 Oct 2018 11:08:29 GMT  
		Size: 283.8 MB (283833426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8d731bbd73516b199cebc363167e589a11c25224433ae976e1f7a8d8e38c4`  
		Last Modified: Wed, 10 Oct 2018 11:07:54 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
