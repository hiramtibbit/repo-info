## `openjdk:8u212-windowsservercore`

```console
$ docker pull openjdk@sha256:4a7205cefc6267e37b0a907e127517db7d46f617e3fbeab020b1d6318800ab28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64
	-	windows version 10.0.17763.504; amd64

### `openjdk:8u212-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:096f31c60e65798cd0fda43c52e18b11d889dd6047dc6292b63c8904ecd53ec2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5819156066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd13441da0e964ce89defca4556086b25f9d72b5d43ea03af47b0c4b40e6e9e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:21:13 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 22 May 2019 15:22:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 22 May 2019 15:22:13 GMT
ENV JAVA_VERSION=8u212
# Wed, 22 May 2019 15:22:15 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 22 May 2019 15:22:17 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 22 May 2019 15:22:18 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 22 May 2019 15:24:19 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136a27d2cc8733eebe3637bfaa5ea3f0d176972f553cd5a498632dc7058a249f`  
		Last Modified: Wed, 22 May 2019 16:15:16 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d054efeeda656f822886a6cf88dcce52adf5c82fb33f099008eaf0e3648c6fed`  
		Last Modified: Wed, 22 May 2019 16:15:17 GMT  
		Size: 5.2 MB (5216978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ce36217fe302a5017c7d8e8f54d558dcf9150aa7c55464ff2f6be7ee086bf5`  
		Last Modified: Wed, 22 May 2019 16:15:13 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a92c98a7db0bce817425f4bde8c9935b2164b7cfd4b3bb495d510d434f47c58`  
		Last Modified: Wed, 22 May 2019 16:15:14 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0226095618a8cc17a9675870f5f4d4ec92d7d4d5221a2e7ff3020612f3ae63`  
		Last Modified: Wed, 22 May 2019 16:15:13 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7f0987aa60e47e6645fa353cf811bb3e1d483361826d3e940856699a177230`  
		Last Modified: Wed, 22 May 2019 16:15:13 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921386dadab9807e6e728fa35c7a4160875fcd1abdb9be38f2c436b0c201a206`  
		Last Modified: Wed, 22 May 2019 16:15:34 GMT  
		Size: 114.1 MB (114143696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u212-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:5b45872831b1d53d6d0004db5e782605462f7e91ef2b216ff31f5f329768b61c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2417492271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11266e35f6d6e5b82a0e0b8bff69921450944db78803077f36eceba02089356d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:24:30 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 22 May 2019 15:25:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 22 May 2019 15:25:15 GMT
ENV JAVA_VERSION=8u212
# Wed, 22 May 2019 15:25:17 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 22 May 2019 15:25:18 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 22 May 2019 15:25:20 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 22 May 2019 15:26:42 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fed5142a23462052dcdb716ece9c0d71848be7b6b38f59be31c25063f529574`  
		Last Modified: Wed, 22 May 2019 16:16:04 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e626acf9a2dd0e9437ca0899ca33b614982d52bc27a4dac2f0c109feef3dc3d6`  
		Last Modified: Wed, 22 May 2019 16:16:05 GMT  
		Size: 4.8 MB (4763816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e345812d30f986195fa0989437c10c31b194f32d3bb5af20a9f565e12f117d`  
		Last Modified: Wed, 22 May 2019 16:16:01 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a360808e6e88473c50ca4df180ce0e1bcadf8c8bd16575549c58cddc3f57a8c`  
		Last Modified: Wed, 22 May 2019 16:16:01 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f970a43cb7b7693ce5ac8422b629dda510c6bfa99372ea77b30873497ee3a49`  
		Last Modified: Wed, 22 May 2019 16:16:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2208c1764d9f69aa31cc00beac9adaaa7ec9bfb494a37164daa1df8f2f21d4ef`  
		Last Modified: Wed, 22 May 2019 16:16:01 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c92300b7beeef4efc8c3759ea2f2da2b3a1f4897e97d263282df30002d07c`  
		Last Modified: Wed, 22 May 2019 16:16:21 GMT  
		Size: 109.3 MB (109264502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u212-windowsservercore` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:ed8c6f0c516fa6aace22ae11ffa7603c830343551d6fca6987b6e77a16dde206
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2192708277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbfdd85b8eb0b6aaad0fa2e93614dbe239f24d6c363cf7483afdc70c820937e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:26:57 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 22 May 2019 15:57:46 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 22 May 2019 15:57:47 GMT
ENV JAVA_VERSION=8u212
# Wed, 22 May 2019 15:57:49 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 22 May 2019 15:57:51 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 22 May 2019 15:57:52 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 22 May 2019 15:59:14 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34096e35386c97843ae93c69c76c5168246fb3aaad8f6c3808b1d24705d8261`  
		Last Modified: Wed, 22 May 2019 16:16:51 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8c5181844acee10bbb33e172b249a175c1ab05331330b9ebce85049e089575`  
		Last Modified: Wed, 22 May 2019 16:16:56 GMT  
		Size: 4.3 MB (4337845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1706baf03e64ae4c9c2ea04ad3a2cf653ab984212422eeaca06ad81cfb7dc7c`  
		Last Modified: Wed, 22 May 2019 16:16:49 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929846fe7b9d401ca8f218004edd2abcb5a22ced82832b191681180a89c9f3b2`  
		Last Modified: Wed, 22 May 2019 16:16:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bfa50d694258fe0930a584f33be80bed49e24401712701348984890d0000c2`  
		Last Modified: Wed, 22 May 2019 16:16:49 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a94bb7b86aa01e5b2a16406987d0af5ae9b1c5e74835f6e4c0b98c051b0376`  
		Last Modified: Wed, 22 May 2019 16:16:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb4c7c6a6c9cb6c4cbb3b9eb160e1ea3bb80db7cbe4988cd6e7226da2c6d97e`  
		Last Modified: Wed, 22 May 2019 16:18:54 GMT  
		Size: 109.2 MB (109236535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
