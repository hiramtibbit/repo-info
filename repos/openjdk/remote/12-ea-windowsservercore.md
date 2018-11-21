## `openjdk:12-ea-windowsservercore`

```console
$ docker pull openjdk@sha256:d7fe92b7bc6467654694795c266a6313e2063e40a7fbd349aea10ba1a1cf98e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64
	-	windows version 10.0.16299.785; amd64
	-	windows version 10.0.17134.407; amd64

### `openjdk:12-ea-windowsservercore` - windows version 10.0.14393.2608; amd64

```console
$ docker pull openjdk@sha256:fb30a5f778a5431c9bc1a4f5493f8c40ee5287599041d93cdb099aea321f77c4
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5834775851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc28245583bbe554adb15f04dc23fd10ae739a5341a0094b54d946baceed1a4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:17:31 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:19:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 21 Nov 2018 10:19:08 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 10:19:09 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/20/GPL/openjdk-12-ea+20_windows-x64_bin.zip
# Wed, 21 Nov 2018 10:19:10 GMT
ENV JAVA_SHA256=42f843635a0166951bd96a85d982ead987b6cfc07ba18b7f6830eb5a6c1df5c9
# Wed, 21 Nov 2018 10:21:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 21 Nov 2018 10:21:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a73dd485a587939590e9229c43eb1d7f486dddef485831ea8b810e1b770bd24`  
		Last Modified: Wed, 21 Nov 2018 10:55:34 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9185aff84009eb869fc2300040d79fe8ef8be56a519bc4f52cc943a234e429`  
		Last Modified: Wed, 21 Nov 2018 10:55:36 GMT  
		Size: 5.2 MB (5204448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e33e2ae1c1aa6b1a068b27ee612aa7e7be7105c4357eba2735f35108c285550`  
		Last Modified: Wed, 21 Nov 2018 10:55:31 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f576022ed4fe822fa50a5f91306c11bb1aa6c0d481e3ad932e5e0e675bbbfbf1`  
		Last Modified: Wed, 21 Nov 2018 10:55:31 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab63304c89e6068ca77bb29c6cb0b3fb8a1723bd40b407f110a20f83f6c82fb`  
		Last Modified: Wed, 21 Nov 2018 10:55:31 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba5c4b8a241cff8888974904319b437a2e5f129882c07e8e2c31ac159dd79a6`  
		Last Modified: Wed, 21 Nov 2018 10:55:56 GMT  
		Size: 195.6 MB (195643218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1e0f4f75d9f3484c7d4dc2431ec4d7f9cda009c613a7fc4ec2af9767ff7909`  
		Last Modified: Wed, 21 Nov 2018 10:55:31 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-windowsservercore` - windows version 10.0.16299.785; amd64

```console
$ docker pull openjdk@sha256:8f29bc2ae932a7a6f3ced3158cafceed46d7889288a826b3ade722aeacf9a290
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3345971379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4c7b869ff6197ed9308d5bf245c27c4cbc8207b69a5080fcb47bd6d94d2945`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 31 Oct 2018 19:38:09 GMT
RUN Install update 10.0.16299.785
# Thu, 15 Nov 2018 10:48:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:21:58 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:23:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 21 Nov 2018 10:23:06 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 10:23:08 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/20/GPL/openjdk-12-ea+20_windows-x64_bin.zip
# Wed, 21 Nov 2018 10:23:09 GMT
ENV JAVA_SHA256=42f843635a0166951bd96a85d982ead987b6cfc07ba18b7f6830eb5a6c1df5c9
# Wed, 21 Nov 2018 10:25:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 21 Nov 2018 10:25:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:78ada4d5eaa052e2d6ab049ee3371e7d2298a9e3e6dc6e10cf2aa4c0f8704abd`  
		Last Modified: Mon, 12 Nov 2018 20:34:53 GMT  
		Size: 871.6 MB (871606875 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9a5b772c67f53a1d58ffc0a436ed7381268334533ade21d234214327743331f0`  
		Last Modified: Thu, 15 Nov 2018 11:03:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea36ab330d906868d0bf99eff14a14b023ff4c1196d6d019743a1c179b9b2af`  
		Last Modified: Wed, 21 Nov 2018 10:56:27 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6887eed8a4a61124bd277b7a9e4385e2d963e1aa6734ff4e4839292a7de45c15`  
		Last Modified: Wed, 21 Nov 2018 10:56:30 GMT  
		Size: 4.8 MB (4781685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf59f96426eede0833e45d40368cad2d3e95a35cf44c207acdf8293376e2bd07`  
		Last Modified: Wed, 21 Nov 2018 10:56:25 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60652bba5447b938a75e44b4e30f1740503f364e562704ad53283a2cd8353087`  
		Last Modified: Wed, 21 Nov 2018 10:56:25 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d02b3a0c0c9ab35f372bef6464611f7834795d6b77a66499d59ce35e10320e`  
		Last Modified: Wed, 21 Nov 2018 10:56:25 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebe7b916d0031cbe4263b1e455dd952445332a3a28e4af8e0ff909ba0a564a5`  
		Last Modified: Wed, 21 Nov 2018 10:56:50 GMT  
		Size: 195.3 MB (195275053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a688da783681807b1aa2bdea409f1f771527ce04e4567e211ce99a378e8614`  
		Last Modified: Wed, 21 Nov 2018 10:56:25 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-windowsservercore` - windows version 10.0.17134.407; amd64

```console
$ docker pull openjdk@sha256:4af6491de8c701c64737914eebd3436cdd318fdec4ae659e63ab130310ff685f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2435606244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c9e4dd4b83d40628af8e079052bc94353c2287426ebafc60f723c35ffef8cd`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 02 Nov 2018 19:42:23 GMT
RUN Install update 10.0.17134.407
# Thu, 15 Nov 2018 10:51:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:25:26 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:26:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 21 Nov 2018 10:26:36 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 10:26:37 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/20/GPL/openjdk-12-ea+20_windows-x64_bin.zip
# Wed, 21 Nov 2018 10:26:39 GMT
ENV JAVA_SHA256=42f843635a0166951bd96a85d982ead987b6cfc07ba18b7f6830eb5a6c1df5c9
# Wed, 21 Nov 2018 10:28:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 21 Nov 2018 10:28:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e4486f0b239271cca51d8299e172f9335cefd19e924843676add9d58470b19c7`  
		Last Modified: Mon, 12 Nov 2018 20:42:58 GMT  
		Size: 580.4 MB (580390603 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5221af79f3d95df0fd8a8c9a76ffe05ffea9b48cb861ad43ebd1e8b97932608b`  
		Last Modified: Thu, 15 Nov 2018 11:04:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e750f704ae484890fbf351aad4f9af2b392d2e93b95b75d1c24b819bb847fef1`  
		Last Modified: Wed, 21 Nov 2018 10:57:23 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be7a5eb22dcff36ec3bbe6cbdba7649b18e804db735dd70bb122dcaac204b10`  
		Last Modified: Wed, 21 Nov 2018 10:57:25 GMT  
		Size: 4.7 MB (4693124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97de91edc60a45d866801cb077463644b497a0aa5085cf43a1563869a03b0988`  
		Last Modified: Wed, 21 Nov 2018 10:57:20 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445825e5e960ca0e5ebda6269d6b2cfdf08c2a4fc5a57ad7bd527fde23097272`  
		Last Modified: Wed, 21 Nov 2018 10:57:20 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c4201c290436a1f7fef803859f6c3b1a514f13666bdc9bcbd2532c2f380c4f`  
		Last Modified: Wed, 21 Nov 2018 10:57:21 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c4c4daebf422595155f228725aab14bc6d5e515ae98a3d73d42cb3e29cad22`  
		Last Modified: Wed, 21 Nov 2018 10:57:44 GMT  
		Size: 190.8 MB (190827042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43a0af2175946b76cd73d25d48a324ed9ae4af934883c301c1958c174c0c895`  
		Last Modified: Wed, 21 Nov 2018 10:57:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
