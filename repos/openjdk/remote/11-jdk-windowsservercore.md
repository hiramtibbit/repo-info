## `openjdk:11-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:7fcbd423943e38ac01b20c60e836e9ec3dfd6a4053518af1f0bb9497cc2e7667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `openjdk:11-jdk-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:b6619907a796c4394a345ee6128c91b73aafa655b2c6d1d1670e4e39a3b190c7
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5783180783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f6f0d127354d59bd1fb8c2bbefb33b41d948f4259112b9312774ba1c7f7bd7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:54:21 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 09:55:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Thu, 13 Sep 2018 09:55:42 GMT
ENV JAVA_VERSION=11+28
# Thu, 13 Sep 2018 09:55:43 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:55:45 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Thu, 13 Sep 2018 09:58:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 09:58:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a163c1d21ac3709c50d1ee769bc36e133da0d08b2e8d19758599255ace2edac`  
		Last Modified: Thu, 13 Sep 2018 10:26:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fdad88a0b618155f02b69cd24bcec49279f85b0625ea90430160d151b525ea`  
		Last Modified: Thu, 13 Sep 2018 10:26:57 GMT  
		Size: 5.1 MB (5090861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8090216d4bb7f433f13ac671bc711b1f4362b16db19d90e0aeb77fa29bfe545a`  
		Last Modified: Thu, 13 Sep 2018 10:26:53 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371770c6c18c5980f3afda165f196bf3ef9344e42fb1383a4e66acf383fde5c7`  
		Last Modified: Thu, 13 Sep 2018 10:26:53 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80242902e593e777c98257304813b9c4e9b6fe09854fe225654026ef634301ab`  
		Last Modified: Thu, 13 Sep 2018 10:26:53 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9e4646b83e2fe42dd66e7b202dd8c28f7bad7371583221636086bbd92a0d98`  
		Last Modified: Thu, 13 Sep 2018 10:28:04 GMT  
		Size: 192.2 MB (192226629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf52260c345eaf710ad54f265eb879a60059e9b08f6b5f8e113a3b06a10f762`  
		Last Modified: Thu, 13 Sep 2018 10:26:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:b21fed09a9f39ce8cf1103485fe0c3a006382f5589df251d203148074705857b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324745602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b9d967d18b5cfb03984f497e8e2941882436115a64728f58ee5edbd4f450b3`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:58:48 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 09:59:41 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Thu, 13 Sep 2018 09:59:42 GMT
ENV JAVA_VERSION=11+28
# Thu, 13 Sep 2018 09:59:43 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:59:44 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Thu, 13 Sep 2018 10:01:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 10:01:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a5b83e25f92aef992a2827d664111b4726ada7d0b13d7af21882734cab96d8d0`  
		Last Modified: Tue, 11 Sep 2018 17:07:56 GMT  
		Size: 858.3 MB (858335510 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fa61e3e01eeaa5482e77157970441ee8c2414720462e140b668a5b58902a78f5`  
		Last Modified: Thu, 13 Sep 2018 10:25:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d2740223569795bbfaa59e0ca67ae4a3f992218e293e85d470cec3bd72626e`  
		Last Modified: Thu, 13 Sep 2018 10:28:29 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517408eb2850768810590f3e4b6cc37a56eda4a10339ae1f36cb1cfcf027f961`  
		Last Modified: Thu, 13 Sep 2018 10:28:31 GMT  
		Size: 4.7 MB (4724586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aa50ac65a1bd22a76b07970e7cc581769a0f0ea44e1a817f468036124d943f`  
		Last Modified: Thu, 13 Sep 2018 10:28:26 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2afc9cce892f4e88e61f8210a74eb92d418e98b4ec443e5817860d1c917bb3`  
		Last Modified: Thu, 13 Sep 2018 10:28:26 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ed83adbd2a541d1181c131425edfd1957d9c656aa8cf9a4cb951175bf69b9`  
		Last Modified: Thu, 13 Sep 2018 10:28:26 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67693853c5aa89269f6674247f33ae58f2643baf1737edcd0547b31873f8ac96`  
		Last Modified: Thu, 13 Sep 2018 10:29:08 GMT  
		Size: 187.4 MB (187377762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87c636b1df88593ac5c008e03db39b0a75da0cc325d775107498e252d8ad989`  
		Last Modified: Thu, 13 Sep 2018 10:28:26 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-jdk-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:1d742f7fc44019099b7b2b8d51f420b379a8500796e6d00ca1de3b472f1a888f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394559566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83aee56664f4dc93beb2191ec5c897feefbc43891000ed1dd9eb40b5ea5cceab`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:02:00 GMT
ENV JAVA_HOME=C:\jdk-11
# Thu, 13 Sep 2018 10:02:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Thu, 13 Sep 2018 10:02:51 GMT
ENV JAVA_VERSION=11+28
# Thu, 13 Sep 2018 10:02:53 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk11/28/GPL/openjdk-11+28_windows-x64_bin.zip
# Thu, 13 Sep 2018 10:02:54 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Thu, 13 Sep 2018 10:05:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 10:05:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:499c5d8410bcb30d8e576aa1248844529b2af7aff7307a4b79f366790c87756f`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a911cc248ef9f987defedbaad7664b52fc397032080b977a4663731b9f303fd4`  
		Last Modified: Thu, 13 Sep 2018 10:29:32 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1fcfd192b0ee831ccb01cad021165d1cf536dbe91ae33a138e6d1364c29a1c`  
		Last Modified: Thu, 13 Sep 2018 10:29:33 GMT  
		Size: 4.7 MB (4653128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5aff8f09bf65a8d5555b2d861d9ab39d6af87a2da2cba6192070f2cf5acfa0`  
		Last Modified: Thu, 13 Sep 2018 10:29:29 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45f5fc185983600ae4f3f9896c4a71d28ac01a5166256ce9444bd1e099e5fbf`  
		Last Modified: Thu, 13 Sep 2018 10:29:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9d83838eed4dfa76cb0b6adaea2a4cf2d991c713341adc0dba4baf6153deb6`  
		Last Modified: Thu, 13 Sep 2018 10:29:29 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de2d045884f23388b292bb9286dbc8ba0aee2b0431f5141eaddf2bf15f910c`  
		Last Modified: Thu, 13 Sep 2018 10:30:05 GMT  
		Size: 183.0 MB (182985242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f718503edbf58a3f7ced37df2d626d4c77cf224b1ba007b5539d7ba88b95d26`  
		Last Modified: Thu, 13 Sep 2018 10:29:29 GMT  
		Size: 1.2 KB (1175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
