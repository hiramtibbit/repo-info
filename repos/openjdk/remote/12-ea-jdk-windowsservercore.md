## `openjdk:12-ea-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:9f11281f96a7167c1c98274fb2c2ff9a8b6e33fe97a1a1f95a485ffb09ace1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `openjdk:12-ea-jdk-windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:f7bbd1009e86b449ada6166506c28ab26e060cf08e2392e278cef412e992cd7f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5836710281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef80e45d6a049a05cac2b8b73fe869d52d30d44b522192e9a3a2a4a17b251eb8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Fri, 14 Dec 2018 10:44:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:16:26 GMT
ENV JAVA_HOME=C:\openjdk-12
# Sat, 22 Dec 2018 10:18:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 22 Dec 2018 10:18:04 GMT
ENV JAVA_VERSION=12-ea+24
# Sat, 22 Dec 2018 10:18:05 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Sat, 22 Dec 2018 10:18:06 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Sat, 22 Dec 2018 10:20:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 22 Dec 2018 10:20:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c9346499d56b89267b8f21f1328b59d8fe902493eca87b656cb4d1284a207c91`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f417b0d19543382a87235482d367c6050395c23bf3a78df89163e92ff15dc8e9`  
		Last Modified: Sat, 22 Dec 2018 10:48:40 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cdcba8ef80a06a0fbfb2ba8991104354bfc9811d4e0db9edfdf134d3e5d4fe`  
		Last Modified: Sat, 22 Dec 2018 10:48:42 GMT  
		Size: 5.2 MB (5226264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afcb0f123a0ae670418fd60ec16d8db7ee2397ee61a3b2b7867868c3b828786`  
		Last Modified: Sat, 22 Dec 2018 10:48:38 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10a2557c2072ebc44e2be1aa66786c4b5c79f4204e85e833106c4f913009f72`  
		Last Modified: Sat, 22 Dec 2018 10:48:38 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb5e05e96a7dd28a34ce486e7df04aa92e6e69da231c153e34386a68e7e2937`  
		Last Modified: Sat, 22 Dec 2018 10:48:38 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83a30c4040e8833f9895c078081e8648995ddbd8ecf66808d803642fc2409bc`  
		Last Modified: Sat, 22 Dec 2018 10:49:02 GMT  
		Size: 196.7 MB (196749629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b019e98d332835c001521d2d47990025ea3d680ea6a3d99dc1e85de4a8033d61`  
		Last Modified: Sat, 22 Dec 2018 10:48:38 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-jdk-windowsservercore` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:9d4e8df598dde46910e288985823cd9a1e1d92441fd93da6ec3af953178f4178
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3353267766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f110e4e559f5d2333e5d9e6ae3df71cfce294996ad338b51cb88c37346c2493a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Fri, 14 Dec 2018 10:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:20:54 GMT
ENV JAVA_HOME=C:\openjdk-12
# Sat, 22 Dec 2018 10:22:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 22 Dec 2018 10:22:04 GMT
ENV JAVA_VERSION=12-ea+24
# Sat, 22 Dec 2018 10:22:05 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Sat, 22 Dec 2018 10:22:06 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Sat, 22 Dec 2018 10:24:16 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 22 Dec 2018 10:24:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3f98cda35707ef2fc387c3a54b43843c3b83a0aca5dff2755b109b6395a01f1c`  
		Last Modified: Fri, 14 Dec 2018 11:45:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866463f1e89a87b32297c7b1d572f70f88dc7ed60e4540d42bea0d3fa7a7a096`  
		Last Modified: Sat, 22 Dec 2018 10:49:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495d1a9bf70be27ca85ed94d2fa87ea17abbfc587ffbecef51bd48c6088fb197`  
		Last Modified: Sat, 22 Dec 2018 10:49:36 GMT  
		Size: 4.8 MB (4789704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6f654fd767131624dac250432c120017f50c6af6de388674b86a9f9fdfc567`  
		Last Modified: Sat, 22 Dec 2018 10:49:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4348df3db4e2a9ef03b4a15ff1e0131af403fe23ec4aae491430426c3c8d4f6`  
		Last Modified: Sat, 22 Dec 2018 10:49:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76b3d69a28e2cbd86eb8bc79217eeab6e9ff47254c2e704496dd4866fd29ce8`  
		Last Modified: Sat, 22 Dec 2018 10:49:32 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c95f9860a59b031fed8771a5dbe95557a24b1481449c1c2171db64f7ba3dfb4`  
		Last Modified: Sat, 22 Dec 2018 10:49:57 GMT  
		Size: 196.3 MB (196333262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75814e0f951326c6c5ddaa08c2efb539c9eb4e4b26219ad67725945df21dd2ed`  
		Last Modified: Sat, 22 Dec 2018 10:49:32 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-jdk-windowsservercore` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:74d29698e17dfd49a4b7866881e2ee8877cfebdc3f09dced24bbad0f07dbd476
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440189753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57d031ced5a6cb348ccc4a3de3d852606475cf2f8e41994c0e4b4f6f60a553a`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Fri, 14 Dec 2018 11:04:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:24:37 GMT
ENV JAVA_HOME=C:\openjdk-12
# Sat, 22 Dec 2018 10:25:39 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 22 Dec 2018 10:25:40 GMT
ENV JAVA_VERSION=12-ea+24
# Sat, 22 Dec 2018 10:25:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Sat, 22 Dec 2018 10:25:43 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Sat, 22 Dec 2018 10:27:47 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 22 Dec 2018 10:27:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8b4b6fc57867bd595f143a036b6646613e7abc74c4e3c65f07d1c770f023d14c`  
		Last Modified: Fri, 14 Dec 2018 11:47:50 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e5bc76e212615743b6226802531cc2b1fe2fcd845246ab5bd9c5fbebd55f44`  
		Last Modified: Sat, 22 Dec 2018 10:50:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20acd05e3fff8cf88f109329f574f87ac16ee5f5430101c3fe1aa4dfada4a26`  
		Last Modified: Sat, 22 Dec 2018 10:50:31 GMT  
		Size: 4.7 MB (4706413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54ac15e78beef70a1debd56f09c0bba8df47690c5ccab1c97d55282e44c23d`  
		Last Modified: Sat, 22 Dec 2018 10:50:26 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe1f6f80ca51da867a047abfd8f7458db0e331679d1a6886d55b3c52142ed0b`  
		Last Modified: Sat, 22 Dec 2018 10:50:26 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095470009ae8d6810f584be5b52128e762d420bf94c9bdca151d2e46e5541f63`  
		Last Modified: Sat, 22 Dec 2018 10:50:26 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868dd8468f0e54105767836da3746098a0c59c3a226ff085869641ad5886a1fa`  
		Last Modified: Sat, 22 Dec 2018 10:50:50 GMT  
		Size: 191.9 MB (191889109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768d8fc8e6537d0616b322fcb2b1b7178d48bd62ae951e5445c5766980755a5f`  
		Last Modified: Sat, 22 Dec 2018 10:50:26 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
