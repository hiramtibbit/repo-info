## `openjdk:12-ea-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:6549c67fc20ba66f0f9fe3c0b39dc2779992feb6937f91df02a4f8a42fe29ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:12-ea-jdk-windowsservercore-1709` - windows version 10.0.16299.665; amd64

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
