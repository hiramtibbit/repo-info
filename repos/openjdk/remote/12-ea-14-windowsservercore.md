## `openjdk:12-ea-14-windowsservercore`

```console
$ docker pull openjdk@sha256:a7fbe2a046d5f45739136fd59d95d8cb5463188350dea54fde3c25e126e1d101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-ea-14-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:e21c923009f6b4182da39b33a74ae050d56039819e3f9b3e6aaf0e6d47640e01
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5785057889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff85975adb2c621cc4ef05f814e6acf205ff56ec77807ceeaf357e2f1af9061b`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:26:40 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:28:01 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 06 Oct 2018 09:16:47 GMT
ENV JAVA_VERSION=12-ea+14
# Sat, 06 Oct 2018 09:16:48 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_windows-x64_bin.zip
# Sat, 06 Oct 2018 09:16:49 GMT
ENV JAVA_SHA256=43ac13c36e6d868c55e4e5bfefa2e9ae1fa7fb4006fde49ac8b2a3e1b9ca8279
# Sat, 06 Oct 2018 09:19:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 06 Oct 2018 09:19:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
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
	-	`sha256:38a9f12690baac04c48f542b4cb10d68ff90ea0766ee37b055bc12b097055bed`  
		Last Modified: Wed, 03 Oct 2018 11:06:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f2b53a1b840087a88430ad81d952335c52d847423a89cca793575d8c3d788b`  
		Last Modified: Wed, 03 Oct 2018 11:06:10 GMT  
		Size: 5.1 MB (5100445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ce8883c058849dfdf2f70260071d11a1fe001498d03ed551522add384f3f9e`  
		Last Modified: Sat, 06 Oct 2018 09:25:45 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4864a2f5f1059ce8f2e762e22bfed9eec1cfda6eac3f4ebdbc4750e99e6a5b79`  
		Last Modified: Sat, 06 Oct 2018 09:25:45 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ee7c15906fad0baef463dbb0375c6be90f90739415748b57760a589d720770`  
		Last Modified: Sat, 06 Oct 2018 09:25:45 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e523cca92d334fc6503395a4bf6254790f1af68c93251a3d2d9df0ef420b1182`  
		Last Modified: Sat, 06 Oct 2018 09:26:08 GMT  
		Size: 194.1 MB (194094133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6468509823c0e7376bab8fe47a3036a0a89b41687f5b3368f8b5e52327be41a8`  
		Last Modified: Sat, 06 Oct 2018 09:25:44 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-14-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:96833619eca60c07e3f914e7e536227766621513a39edb6f69fedf61c526f42e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3326635287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd6013e1470f0f4520be88842966a4f9002048499e58198460ce2274c5798bf`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:30:41 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:31:38 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 06 Oct 2018 09:19:58 GMT
ENV JAVA_VERSION=12-ea+14
# Sat, 06 Oct 2018 09:19:59 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_windows-x64_bin.zip
# Sat, 06 Oct 2018 09:20:00 GMT
ENV JAVA_SHA256=43ac13c36e6d868c55e4e5bfefa2e9ae1fa7fb4006fde49ac8b2a3e1b9ca8279
# Sat, 06 Oct 2018 09:22:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 06 Oct 2018 09:22:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
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
	-	`sha256:ae90fde8b680ca3d4b1758bddb83b5fe82603ef03dd52a2a2dd2d36c21484362`  
		Last Modified: Wed, 03 Oct 2018 11:07:00 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316584245e2e3ac9eef5fa802a273a49faaca6a35ed381972ca5d75b197aad5c`  
		Last Modified: Wed, 03 Oct 2018 11:07:03 GMT  
		Size: 4.7 MB (4743153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c14bf229b9257de9017fd20121dfa7255693f854210e9fd807e330e6dbe719`  
		Last Modified: Sat, 06 Oct 2018 09:26:35 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cd0bb904a1d2d76b599744d08f70e211ab92a1cc7f70560aee99614c70e313`  
		Last Modified: Sat, 06 Oct 2018 09:26:35 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec72d083503d127ed61e5c9e81d17ac956edf1b09c1952ad3207da35aef8172`  
		Last Modified: Sat, 06 Oct 2018 09:26:35 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318881530f1e34de451f0f82b63fb13b9df082e9f1c3754f874e368bc710fc4d`  
		Last Modified: Sat, 06 Oct 2018 09:26:57 GMT  
		Size: 189.2 MB (189248866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5110ee185d8697ab17081b8244216285390bc9119e23eef2e7177d88ec7e4193`  
		Last Modified: Sat, 06 Oct 2018 09:26:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-ea-14-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:e9cf3b85fffbcd1c63b453be569874d0c05a63cd763690073fbc960f58d27b14
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2396444838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a708ba551842eb61d232dd80f76a0193561882e53d1f4fd0fe0b9162f94d3551`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 03 Oct 2018 10:33:49 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 03 Oct 2018 10:35:00 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 06 Oct 2018 09:22:20 GMT
ENV JAVA_VERSION=12-ea+14
# Sat, 06 Oct 2018 09:22:21 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_windows-x64_bin.zip
# Sat, 06 Oct 2018 09:22:22 GMT
ENV JAVA_SHA256=43ac13c36e6d868c55e4e5bfefa2e9ae1fa7fb4006fde49ac8b2a3e1b9ca8279
# Sat, 06 Oct 2018 09:24:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 06 Oct 2018 09:24:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
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
	-	`sha256:152ac716e0e58a1536dce5c63493a24de08dc2bb165fd6ea2e074c4ad26e2354`  
		Last Modified: Wed, 03 Oct 2018 11:08:03 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd57c14e974a8b56595413ba657fc382e8b03cc02850e6ff4f8b65ec514a97fa`  
		Last Modified: Wed, 03 Oct 2018 11:08:04 GMT  
		Size: 4.7 MB (4669279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9bbad521661e0343117871f2e4134439947900e4c03789857fae3d5804d4d3`  
		Last Modified: Sat, 06 Oct 2018 09:27:28 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7c2b359103812deba6ec2ae6a829b4f8239dc50751c9b40acaa44c42d6dc15`  
		Last Modified: Sat, 06 Oct 2018 09:27:27 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9621302d7be0890654a6d091091060bef018b7179d32255f944407e65b091996`  
		Last Modified: Sat, 06 Oct 2018 09:27:28 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4806e782a15d51387cffda4ebaee37bc5a1b3516a7087c989a12df3edd063d50`  
		Last Modified: Sat, 06 Oct 2018 09:27:49 GMT  
		Size: 184.9 MB (184854328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a974188ea776aedbc7c5f174e15978267124288f1167a4c4f71a057f2e8e64`  
		Last Modified: Sat, 06 Oct 2018 09:27:27 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
