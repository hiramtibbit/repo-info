## `openjdk:12-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:dc165245584d94503d70d8981bb26867e59f2d0a8c2fd32316e22360a7abd880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.665; amd64

### `openjdk:12-jdk-windowsservercore-1709` - windows version 10.0.16299.665; amd64

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
