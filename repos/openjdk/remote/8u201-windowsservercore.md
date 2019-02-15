## `openjdk:8u201-windowsservercore`

```console
$ docker pull openjdk@sha256:82118fc411654517e5c29e0399ff431e98558c120da7bd4ec1f36d6c6886a301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64
	-	windows version 10.0.16299.967; amd64
	-	windows version 10.0.17134.590; amd64
	-	windows version 10.0.17763.316; amd64

### `openjdk:8u201-windowsservercore` - windows version 10.0.14393.2791; amd64

```console
$ docker pull openjdk@sha256:7ab69f306ab64c190a94aa06e59ecdf25c2fafac8bb2e49d8a549414f79636bc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5756686283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ece65d60e2037435fa92d27e3b9df4e0711baa4036e75d6b8c8a9239aa831d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 11:30:38 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 15 Feb 2019 11:31:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 15 Feb 2019 11:31:36 GMT
ENV JAVA_VERSION=8u201
# Fri, 15 Feb 2019 11:31:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 15 Feb 2019 11:31:40 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 15 Feb 2019 11:31:41 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 15 Feb 2019 11:33:37 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d81aa865a0a95af15cafa6de7a7be16bf3095845e884e00e9667a3582f418e`  
		Last Modified: Fri, 15 Feb 2019 12:16:52 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b5f10102f616e3ae4a541615e224843ba02a71fe6ded4e87faf9b11689e168`  
		Last Modified: Fri, 15 Feb 2019 12:16:54 GMT  
		Size: 5.2 MB (5211712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73f640408ff9c8cbf6ed2a2d7ae337062d770d1a0265193ec10bf4cccdfa465`  
		Last Modified: Fri, 15 Feb 2019 12:16:49 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6634ddee881253da8784a8493b53e25a95689dc0574719f19ac650a4eaba7719`  
		Last Modified: Fri, 15 Feb 2019 12:16:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f991b88d09203aacc9dff606c3f2584bc09405a27eb036da09bdf2308b9afa`  
		Last Modified: Fri, 15 Feb 2019 12:16:49 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29e2e68c6277dbc68d9d910aa7e0b212b499a7cf8215dcda6c502afca03708e`  
		Last Modified: Fri, 15 Feb 2019 12:16:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d4f5929d33f7543924000cded1208f5af8cb605c2276c4f55f06aa3c9548a3`  
		Last Modified: Fri, 15 Feb 2019 12:17:13 GMT  
		Size: 111.4 MB (111420317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u201-windowsservercore` - windows version 10.0.16299.967; amd64

```console
$ docker pull openjdk@sha256:e5c9ea912e3b6a35a3cdfe715457ef31682351abde1b7747ea0801e86e31251b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3263954263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3204ccf20fcca9876e175a0273db682403aa0f83a292bd719be3a79fcc60a9b`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 11:33:51 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 15 Feb 2019 11:34:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 15 Feb 2019 11:34:39 GMT
ENV JAVA_VERSION=8u201
# Fri, 15 Feb 2019 11:34:41 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 15 Feb 2019 11:34:42 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 15 Feb 2019 11:34:44 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 15 Feb 2019 11:36:21 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e60063399a9554009509b3fb74f8cd5bd0a3f17cb0ee9c44dafc622dbea96f`  
		Last Modified: Fri, 15 Feb 2019 12:17:34 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ceb3f8550eefbe3e6b6e31fdd6f19aa15f548e3ab247f0f4f96976341a0daf0`  
		Last Modified: Fri, 15 Feb 2019 12:17:36 GMT  
		Size: 4.8 MB (4776662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e47642c6347dca2bb0c304301d5a42653353442e8810cbac4fcff2bfd414848`  
		Last Modified: Fri, 15 Feb 2019 12:17:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec20852e7fb89aa8147289c914d1006c82e139b734ba96b42bcc35e4e1709d7`  
		Last Modified: Fri, 15 Feb 2019 12:17:32 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e60f12241ccd3d3bbe6563d050475f6dadae5b91779a62d260b42fa13087af`  
		Last Modified: Fri, 15 Feb 2019 12:17:32 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6051a1882a647274fcfec8546e954effa78f7a910c268229d2f2684b7c579c90`  
		Last Modified: Fri, 15 Feb 2019 12:17:32 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac990e39c072465201e24ceb051bb62322d295041d71701e1069ba5b7126953`  
		Last Modified: Fri, 15 Feb 2019 12:17:53 GMT  
		Size: 111.0 MB (110975452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u201-windowsservercore` - windows version 10.0.17134.590; amd64

```console
$ docker pull openjdk@sha256:73ba1177a85547d3ea62fb9506db7c028d4adf9432ac5ffc7ceadcc9375afdad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2358944203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d371938e834b3fd1e4c96f2958506334a58e3a78e10e2224d9f833eb3693faf7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Wed, 13 Feb 2019 11:38:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 11:36:34 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 15 Feb 2019 11:37:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 15 Feb 2019 11:37:26 GMT
ENV JAVA_VERSION=8u201
# Fri, 15 Feb 2019 11:37:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 15 Feb 2019 11:37:30 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 15 Feb 2019 11:37:31 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 15 Feb 2019 11:38:48 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0f56eeb2940f5c3391f320574c551c5f84072a3baaee150b165407a99cfba06`  
		Last Modified: Wed, 13 Feb 2019 12:50:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02de08a459e044c1e7c692ad895eee0bde40f3248f98be14e2362f2081d9da77`  
		Last Modified: Fri, 15 Feb 2019 12:18:20 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3787902c33760805004806491b4d8315ea53c2e2beb8d839c8013caf95ceb35`  
		Last Modified: Fri, 15 Feb 2019 12:18:25 GMT  
		Size: 4.7 MB (4709941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee1bdde861e801e57033f526f5d4ed140b10179ee2bcded11c0f624ad0c19ab`  
		Last Modified: Fri, 15 Feb 2019 12:18:17 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185efe2e264efe02fd95b33f0345b8c38c76c28ba2ca858b6f55f7e2975e795f`  
		Last Modified: Fri, 15 Feb 2019 12:18:17 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105c12424d65039d4ed0ef701d315b4d93549bac3df168b87ae695fe681df178`  
		Last Modified: Fri, 15 Feb 2019 12:18:17 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0cc5cc216cbc0f66a9946d02f57ff1f13cab33abad6ed73b0b97b2a50a3f81`  
		Last Modified: Fri, 15 Feb 2019 12:18:17 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefc1987e954edb15748496ed59883f068eeb984b9575620480f8ebd6b3c50a3`  
		Last Modified: Fri, 15 Feb 2019 12:18:41 GMT  
		Size: 106.6 MB (106555454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u201-windowsservercore` - windows version 10.0.17763.316; amd64

```console
$ docker pull openjdk@sha256:3aeb498ecccfecf7ee7bdfe9084ec19bb46a0e972d9708ad29836719f642fb8d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2016127063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1ce38573eac46aca0f8036c593e8655b89107f3f5dce22b84fce86559acebe`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 11:39:01 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 15 Feb 2019 11:39:40 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 15 Feb 2019 11:39:41 GMT
ENV JAVA_VERSION=8u201
# Fri, 15 Feb 2019 11:39:43 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Fri, 15 Feb 2019 11:39:44 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Fri, 15 Feb 2019 11:39:46 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Fri, 15 Feb 2019 11:41:00 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039bedc214aea74cdc872db7496bd039b380266e04c487005448ce207021f125`  
		Last Modified: Fri, 15 Feb 2019 12:19:02 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09666761923e89cdd503f850da9cf488dd24e12b9bf11f567d0f764115e50b05`  
		Last Modified: Fri, 15 Feb 2019 12:19:03 GMT  
		Size: 4.2 MB (4204229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684d7f5b898b3b27d79e9ab1f1cf44505b00b71151161576b808ddb395faa17`  
		Last Modified: Fri, 15 Feb 2019 12:18:59 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcb5ca81d0f78d669d93ae2471bdff97c12498f633caff802073e8b75ba60e`  
		Last Modified: Fri, 15 Feb 2019 12:18:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a28ba67f32425b17685a4ed149c42ff86d58808b0a3c570f3a18d29a0b44c`  
		Last Modified: Fri, 15 Feb 2019 12:18:59 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0a328516d1bec9fc05fc7b43c9bf2d6ef9ad3a8cd441b37fd794274e35330`  
		Last Modified: Fri, 15 Feb 2019 12:18:59 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f8979b7851c2443724d35266541bfb6c19a30ea76eeda8060f371885b9e69a`  
		Last Modified: Fri, 15 Feb 2019 12:19:19 GMT  
		Size: 106.5 MB (106542733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
