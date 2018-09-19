## `openjdk:12-windowsservercore`

```console
$ docker pull openjdk@sha256:f4990cda567d2fddd87728d1c8a90c336104f2f59ee8f88793413f677194ee48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:cbe293c41ce3bb8695ce5d19e4fd2532fa20a201e4b78b4c06f910bac44b58d9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5782938182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce3f2ca7c3372e4b6046c3703558ce85cefaabc9288939b21885d4ebcfc2d37`
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
# Thu, 13 Sep 2018 09:44:06 GMT
ENV JAVA_VERSION=12-ea+10
# Thu, 13 Sep 2018 09:44:07 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/10/GPL/openjdk-12-ea+10_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:44:08 GMT
ENV JAVA_SHA256=ad3954511fda449a1840ecccfabed877581204eb1f64decd69614af1831cf2c4
# Thu, 13 Sep 2018 09:47:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 09:47:07 GMT
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
	-	`sha256:1ff7eadc9979c657924c29e97aa55b29a40eb3d858a4bad54ef3cfa6363d741d`  
		Last Modified: Thu, 13 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f031025179caf743e0ca18a90ad1c775221414571cd3811b15dcc97bcf33228d`  
		Last Modified: Thu, 13 Sep 2018 10:24:10 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5672ffd881a59f357a786a058bc9f428259b4f406a2dc058de8c6a22269394e`  
		Last Modified: Thu, 13 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437815ea92a3d16ef3d22d9a0500469e39dce123d6a0c4ab4ded1532f3872bcc`  
		Last Modified: Thu, 13 Sep 2018 10:24:39 GMT  
		Size: 192.0 MB (191983580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f3efe6e37bfea4980ed0ebb739d89462340736ff4d1c82e92f97b41c65396c`  
		Last Modified: Thu, 13 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:befcd359d8e06f03a8689332ab47f048041290cf12cab85d28ac34c5bd6621ce
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3324505186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c134319f1ef5cbcd9d6b8b5562b4ab5ffb25609ee1103881c7f250a22db382fb`
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
# Thu, 13 Sep 2018 09:48:46 GMT
ENV JAVA_VERSION=12-ea+10
# Thu, 13 Sep 2018 09:48:47 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/10/GPL/openjdk-12-ea+10_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:48:48 GMT
ENV JAVA_SHA256=ad3954511fda449a1840ecccfabed877581204eb1f64decd69614af1831cf2c4
# Thu, 13 Sep 2018 09:50:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 09:50:47 GMT
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
	-	`sha256:f53edce07d01b4f39e00a73228b1a299390a85d84104a824f0fc91a821a1b391`  
		Last Modified: Thu, 13 Sep 2018 10:25:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d10a2398863b71c0ef5f48d39b0eaabbbb211fe96d2ff59a4af8cc6286e883d`  
		Last Modified: Thu, 13 Sep 2018 10:25:06 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b122cfcaf9706d58ef95e1ea15a9bf3d6df53b06a54fb9a0cc4a19d28c422e`  
		Last Modified: Thu, 13 Sep 2018 10:25:06 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f52075b8b86ffe343e2d25a52d1818ccb0b513b6ad91c16896ea51d29fbb8df`  
		Last Modified: Thu, 13 Sep 2018 10:25:30 GMT  
		Size: 187.1 MB (187137946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5faae8259917522cc73472767b2a9d44210b1304d15350a64086aed5874b3c`  
		Last Modified: Thu, 13 Sep 2018 10:25:06 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:12-windowsservercore` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:99e30ddaa3573a9b95627b3cd6b0ceb3e927d5b516be190d67c23afa90a753f2
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394321385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69bcc554f0e84db5dc9273c63acf9a9cf74d48e50c6e18d41199ee611be8c08c`
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
# Thu, 13 Sep 2018 09:52:08 GMT
ENV JAVA_VERSION=12-ea+10
# Thu, 13 Sep 2018 09:52:09 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/10/GPL/openjdk-12-ea+10_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:52:10 GMT
ENV JAVA_SHA256=ad3954511fda449a1840ecccfabed877581204eb1f64decd69614af1831cf2c4
# Thu, 13 Sep 2018 09:54:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 09:54:06 GMT
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
	-	`sha256:584d4de3b33c58bdf90f5c6bf5c925f41adde4cebcd6997bad7ea4ff7347bafa`  
		Last Modified: Thu, 13 Sep 2018 10:26:05 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d668d4bc977d983af97ee2f3360dc0a16e67c75a9925ba74f6e7211ce0ce77b1`  
		Last Modified: Thu, 13 Sep 2018 10:26:05 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd528d3b8fecbfb6a8fffd65cdacb38564305488fa18ca0e867ca5cc856f1a16`  
		Last Modified: Thu, 13 Sep 2018 10:26:05 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea6fc525f3040661185abec94d4140e485e2942dbf3a4aeb012a492b167fe08`  
		Last Modified: Thu, 13 Sep 2018 10:26:27 GMT  
		Size: 182.7 MB (182746279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d2117a5081ec4ecdd4473786da6879ba4b0e4b7a11ff5853c5d9ce7cfa6e6`  
		Last Modified: Thu, 13 Sep 2018 10:26:04 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
