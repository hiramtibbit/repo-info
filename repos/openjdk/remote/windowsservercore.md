## `openjdk:windowsservercore`

```console
$ docker pull openjdk@sha256:3e11e50de2e289afb7c7b8a5cd73d4dbdba7f1d0c3ee35ec950b4fae39cd92dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64
	-	windows version 10.0.16299.665; amd64

### `openjdk:windowsservercore` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:46f6218ac5450d96d336f4dae60eaa8860c52cd3cb35766566e98d185b9401c6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5874863487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73d3f929d619c83b47ee3c0edb7da1e64378de93a45ff475ec5b5147efb39fb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:05:28 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 13 Sep 2018 10:06:46 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 13 Sep 2018 10:06:47 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 13 Sep 2018 10:06:48 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.2-1
# Thu, 13 Sep 2018 10:06:49 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.2-1.b13.ojdkbuild.windows.x86_64.zip
# Thu, 13 Sep 2018 10:06:50 GMT
ENV JAVA_OJDKBUILD_SHA256=39801db76f04b9f1491b0d0a64258535f14e319a3cd08d3e161b18a6af7a842d
# Thu, 13 Sep 2018 10:09:54 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 13 Sep 2018 10:09:56 GMT
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
	-	`sha256:ad803864b3f2e6b22efac392c250f26071f5ed6ebd31386a4bb4c6b5241aadc1`  
		Last Modified: Thu, 13 Sep 2018 10:30:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1944c7328c303f11e9985c4948b76fc58bf940fac22f50de2fad705410ca1cab`  
		Last Modified: Thu, 13 Sep 2018 10:30:33 GMT  
		Size: 5.1 MB (5091906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02a04c3e1c7430bd62461d341a20f3cc129b4d828aca9d6fc9dd0662f90df57`  
		Last Modified: Thu, 13 Sep 2018 10:30:28 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1e35453ea63526f90f0678feaab2eb36999aeb7da2f5b1e014b42808fc369`  
		Last Modified: Thu, 13 Sep 2018 10:30:25 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62fe08561e84a49046e48256734128ebc5d48665179e1685a50c9076e1450d3`  
		Last Modified: Thu, 13 Sep 2018 10:30:26 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5791d305f8036eb6978450cf5d1007f14e3e6303f52670dbaf2ed61d8b9d25b7`  
		Last Modified: Thu, 13 Sep 2018 10:30:27 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5876ad89117db7bea79283b774b5c2eb86f2b957b15742c30e7c170ca5c78429`  
		Last Modified: Thu, 13 Sep 2018 10:30:59 GMT  
		Size: 283.9 MB (283907083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545f68778dc84e6a4ad9f3da567818ade006370bfd9beb19ec41ad1b9c0e9e03`  
		Last Modified: Thu, 13 Sep 2018 10:30:26 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:windowsservercore` - windows version 10.0.16299.665; amd64

```console
$ docker pull openjdk@sha256:4295da7ad3fce16562b6b4edfe02917d28d9a168969c56b2d405e7fdc94fabab
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3416390744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73dfe9deff8f70e9cf85f498b4d943aa34af6fcd323558e2212a6bdda16d557`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sun, 09 Sep 2018 17:24:12 GMT
RUN Install update 10.0.16299.665
# Thu, 13 Sep 2018 09:47:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 10:10:10 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 13 Sep 2018 10:11:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 13 Sep 2018 10:11:04 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 13 Sep 2018 10:11:05 GMT
ENV JAVA_OJDKBUILD_VERSION=10.0.2-1
# Thu, 13 Sep 2018 10:11:06 GMT
ENV JAVA_OJDKBUILD_ZIP=java-10-openjdk-10.0.2-1.b13.ojdkbuild.windows.x86_64.zip
# Thu, 13 Sep 2018 10:11:07 GMT
ENV JAVA_OJDKBUILD_SHA256=39801db76f04b9f1491b0d0a64258535f14e319a3cd08d3e161b18a6af7a842d
# Thu, 13 Sep 2018 10:13:40 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 13 Sep 2018 10:13:43 GMT
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
	-	`sha256:716b7d7e1fa2cbf55834f29dd2eadc85f6a08a51eaa2137bcd6806f2645fadfb`  
		Last Modified: Thu, 13 Sep 2018 10:32:02 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb5a831547af71b3536ccf5d89bd0736b6ef5c966d772960b83dbb6c4d78e56`  
		Last Modified: Thu, 13 Sep 2018 10:32:03 GMT  
		Size: 4.7 MB (4723075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398acddaac245abf0dd7f3dd5ad1aa525f3cfc60da0821a45b858653498efccf`  
		Last Modified: Thu, 13 Sep 2018 10:32:01 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d977d7f7a327d69d4d935e370494afc0b189f8d94f100f43cc4ecf0c8ad8c3`  
		Last Modified: Thu, 13 Sep 2018 10:31:59 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e6a7b9d47b6a4e3fc3b2e49bc529e5ac739d7b3da5031ba7dce74233985b34`  
		Last Modified: Thu, 13 Sep 2018 10:31:59 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefe4bcabb76811759c665d6b6d7bbb0f549afe8ea0c14f811d7f0f83456876`  
		Last Modified: Thu, 13 Sep 2018 10:31:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f9d656ffb289035ae0473e7793936997334b6c07e1fbb3cd2af5b067b85786`  
		Last Modified: Thu, 13 Sep 2018 10:32:30 GMT  
		Size: 279.0 MB (279023226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f011aef4dcc9607c11babb96972049c57fa2e8073fd22b7fb9aa8e0303d999cf`  
		Last Modified: Thu, 13 Sep 2018 10:31:59 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
