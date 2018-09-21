## `openjdk:12-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:666a9df2d3ac05559345b71ffaa5792f10d11b309b4ddc5f56fde29bfbb17b48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-jdk-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:336f1f9a876dc26220667e8bcb0f15e8fadab6222e432dc634bf631b299de85c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5782974062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5aadc96a03eefdc2424165545b7cad4c50fc52ba7dd64596f3ad99f1df700f8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:42:25 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:44:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Sep 2018 09:16:41 GMT
ENV JAVA_VERSION=12-ea+11
# Fri, 21 Sep 2018 09:16:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/11/GPL/openjdk-12-ea+11_windows-x64_bin.zip
# Fri, 21 Sep 2018 09:16:43 GMT
ENV JAVA_SHA256=1065039397db6f47d45893bf20ecaf301404736b710e0ddd60f49b6480488dfd
# Fri, 21 Sep 2018 09:20:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Sep 2018 09:20:01 GMT
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
	-	`sha256:03d41013d53a6436cb43e00e548dbba344be745186756d51785d7d2112f893dc`  
		Last Modified: Thu, 13 Sep 2018 10:24:12 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf3b5f90ddee927318cc694f2e987e9a4be7bff110d2728d6b461d343523b5f`  
		Last Modified: Thu, 13 Sep 2018 10:24:15 GMT  
		Size: 5.1 MB (5091320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef44af5d38fd447c29efd2e65339b992efc1fc13d3c1c86f55d832639c81857`  
		Last Modified: Fri, 21 Sep 2018 09:34:16 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b34e3bc39bd5da3d50e870bfe3129338d50d75a2b9cb419ceb3c105eb8e1cb2`  
		Last Modified: Fri, 21 Sep 2018 09:34:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7940dc48ef16c9a752fcd35ab87bb05c2ef2acc8cff3780f65552c44e41e9c9b`  
		Last Modified: Fri, 21 Sep 2018 09:34:15 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d36b51a0b8216609db2fed6e1f0d1d1d9c874b2a34204efd7f15af89946631e`  
		Last Modified: Fri, 21 Sep 2018 09:34:38 GMT  
		Size: 192.0 MB (192019430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246b740027b61a28d84178a9c92e22d4e321f2a26e75f9180f5539e953cabc16`  
		Last Modified: Fri, 21 Sep 2018 09:34:15 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-jdk-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:f21d2059cca6fba57e0ebeb680eeb39511138301aa641f3090f5a2e6267d66ed
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324544281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a010bf166857a9a1172d341bfa9bd786d0d8b656046752266438633d509e9d1e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:47:27 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:48:45 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Sep 2018 09:20:09 GMT
ENV JAVA_VERSION=12-ea+11
# Fri, 21 Sep 2018 09:20:10 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/11/GPL/openjdk-12-ea+11_windows-x64_bin.zip
# Fri, 21 Sep 2018 09:20:11 GMT
ENV JAVA_SHA256=1065039397db6f47d45893bf20ecaf301404736b710e0ddd60f49b6480488dfd
# Fri, 21 Sep 2018 09:22:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Sep 2018 09:22:21 GMT
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
	-	`sha256:f915f46bd201ed77d19fd21bb1a003cd14161bfbc561ddc5846b6981820caf55`  
		Last Modified: Thu, 13 Sep 2018 10:25:08 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f952dfc8ea57f78895574e91e37e90226fdfd33520cbc1f91e6de3a753d5`  
		Last Modified: Thu, 13 Sep 2018 10:25:11 GMT  
		Size: 4.7 MB (4723981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e19aeee41240babda8f22bbedaacd7a95ee664bdf95b5a981b670e9461709a`  
		Last Modified: Fri, 21 Sep 2018 09:35:05 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2b098361aa68751a624804724817c2bb068f752e9c394ad96708095d7b6b0a`  
		Last Modified: Fri, 21 Sep 2018 09:35:05 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d563ff4493972dd04a81997555087903633dcefa2dc4f2d7c7caea678bdbab4c`  
		Last Modified: Fri, 21 Sep 2018 09:35:05 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf5b6a5fd99949c11c2c9bf822b470bb052d63da99a07b9b3ba3458bfd403a`  
		Last Modified: Fri, 21 Sep 2018 09:35:27 GMT  
		Size: 187.2 MB (187177034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b08662eab5f4ab7f9cde33925c54f33489c4ef8cdb110bf0aa2e8bdff20bc42`  
		Last Modified: Fri, 21 Sep 2018 09:35:05 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-jdk-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:e862b73effeb487b74165464fdb9781e1ded67e64db9284261c07668f0cccfcf
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394359092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d9d2ce3a8440f1acc14f9666df570bd34b4975b48974c28ddcba969def0add`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:50:55 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:52:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 21 Sep 2018 09:22:35 GMT
ENV JAVA_VERSION=12-ea+11
# Fri, 21 Sep 2018 09:22:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/11/GPL/openjdk-12-ea+11_windows-x64_bin.zip
# Fri, 21 Sep 2018 09:22:37 GMT
ENV JAVA_SHA256=1065039397db6f47d45893bf20ecaf301404736b710e0ddd60f49b6480488dfd
# Fri, 21 Sep 2018 09:24:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 21 Sep 2018 09:24:43 GMT
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
	-	`sha256:a707f51d0c866dc051de3d98f35b0059daf96c55f64e7813dcacc2ef54a4474d`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f3fe0d22db23f29670f1ef789a4799b1ebac94bc42ff79abfab3449ac0c92c`  
		Last Modified: Thu, 13 Sep 2018 10:26:09 GMT  
		Size: 4.7 MB (4653887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3738485aaceb888ac946e66435c9dc345f01f1f6a494357a16cf7abde4cdffe6`  
		Last Modified: Fri, 21 Sep 2018 09:35:55 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d585e47c4f58f127bd01dd986f7a9106300f53e71537d179549f0a8fd2e7702d`  
		Last Modified: Fri, 21 Sep 2018 09:35:55 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0f7f90573713d09e0398386ee99c441678e071a3d79efe0e03987851ed6d38`  
		Last Modified: Fri, 21 Sep 2018 09:35:55 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d141749154f1cbd9d05119e88aec3cc174d8f04b3c40c36db44032b88b5b2110`  
		Last Modified: Fri, 21 Sep 2018 09:36:17 GMT  
		Size: 182.8 MB (182783978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cac0930e1d03460dd55c55046dc6c14be8d23701ef400677cb023ad16c6618`  
		Last Modified: Fri, 21 Sep 2018 09:35:55 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
