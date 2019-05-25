## `openjdk:8-jre-windowsservercore`

```console
$ docker pull openjdk@sha256:d0cc43f275c19a472516542366a4768f17e835aa025e548b374197ad6d6446fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64
	-	windows version 10.0.17134.766; amd64
	-	windows version 10.0.14393.2972; amd64

### `openjdk:8-jre-windowsservercore` - windows version 10.0.17763.504; amd64

```console
$ docker pull openjdk@sha256:053730baefccdcda043e548d11f6a073f6041cc8228cb1d33ebafb152bc07d14
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2134407325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956b9fd0e5e18a1e9b0fe566c320bf99b22cdfa7452de421b653ccae1ee68e06`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:34:17 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:34:55 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:34:56 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:42:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 23:42:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:43:41 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d4e587840c15e420fe1e5fdaf8caf8cfc443e767405a1caa51e7c38e956da8`  
		Last Modified: Fri, 24 May 2019 23:56:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5be97e3694157e37f7e42ae3006bfa411f1d49010daed156d92061aa612d65`  
		Last Modified: Fri, 24 May 2019 23:56:27 GMT  
		Size: 4.3 MB (4338267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64742ab7c1769852c5852aa47770969d44476d4ccd5cb9c2ecd198879b0662fb`  
		Last Modified: Fri, 24 May 2019 23:56:26 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4fcb21d08ff0277e61322ee35ca7a3b731561b094c946ce0210924617c051`  
		Last Modified: Fri, 24 May 2019 23:59:55 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79e266b1d043018b71e06e1e479b53abeb2d740863defd3b7f20c5995d4ef84`  
		Last Modified: Fri, 24 May 2019 23:59:55 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce11ccb6909369a68dffd504cf120839bae472602d30629d52f7e7898ebc374`  
		Last Modified: Sat, 25 May 2019 00:00:52 GMT  
		Size: 50.9 MB (50936438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-windowsservercore` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:89f0e65975416e28a2d1309a803251c96832812666d84f479e3c189952fa7568
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2359200478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b35b023d36eaa2d85c85fa6116728870555ef62155e64dae7c3ec71b2190bf4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:36:45 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:37:26 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:37:28 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:43:58 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 23:43:59 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:44:59 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca286b9003968aa084b96f07a644f17029279853b4e0d886e71fe6aed0b67dfe`  
		Last Modified: Fri, 24 May 2019 23:57:48 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9904ba75a09f8073f21d3e48b870afa2bcae69710a151bac6ebabbb78257b4e0`  
		Last Modified: Fri, 24 May 2019 23:57:47 GMT  
		Size: 4.8 MB (4767254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d73ee38c163fddb78a81e87abbdeea5b06e86fe4c34e58fefb5cf9aa9802ae`  
		Last Modified: Fri, 24 May 2019 23:57:46 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756f3203bf760a221e5830c9628abef1898d78f1ffd012d08511e7cfbc965da3`  
		Last Modified: Sat, 25 May 2019 00:01:10 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56be65ac0315aa7f47c790b3f9b7c4cfb762005ce00492733c26dad2608ee72`  
		Last Modified: Sat, 25 May 2019 00:01:10 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babc33a67bfe495faec01887a41f79e55e2fdd805ae617f2faf99105b86bedc3`  
		Last Modified: Sat, 25 May 2019 00:01:26 GMT  
		Size: 51.0 MB (50970567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull openjdk@sha256:f5e0adb80e55108e95aae443b39b801d90e005e516c65c711ef653636f8321ec
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5760859771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65249d287856e51d2067950d0237681e01e083d60c9448680a5d738646780595`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 24 May 2019 23:39:14 GMT
ENV JAVA_HOME=C:\openjdk-8
# Fri, 24 May 2019 23:40:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 24 May 2019 23:40:16 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 23:45:13 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Fri, 24 May 2019 23:45:15 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 23:46:53 GMT
RUN $url = ('{0}x64_windows_{1}.zip' -f $env:JAVA_BASE_URL, $env:JAVA_URL_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'openjdk.zip'; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 		Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08d0bdf137e4b7081a701ed21bdbd344bd0d1c7c1d03d7d55d3c3c90e09ec58`  
		Last Modified: Fri, 24 May 2019 23:59:00 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5b9a097f80f3a884497bf19bc5f568f78785b22bbf0cc8b77d70c262f22d33`  
		Last Modified: Fri, 24 May 2019 23:58:59 GMT  
		Size: 5.2 MB (5215876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f04883f4346190798457740647b3c39b5e5bb0419dcfc1cf885330643158ef`  
		Last Modified: Fri, 24 May 2019 23:58:57 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c765a13d440ddcf578f04ce5ba9bd9afffff8003e8652861280520bdfe83fd`  
		Last Modified: Sat, 25 May 2019 00:01:45 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4653b15e38180a469ae097016e0e540c39a07bd822b035632aa40b6a5bafc3d8`  
		Last Modified: Sat, 25 May 2019 00:01:45 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1863e62b3b9b4c2bb20193b8e3fd3f2fd3b463731e2e23b66f9770acd69572d`  
		Last Modified: Sat, 25 May 2019 00:01:58 GMT  
		Size: 55.8 MB (55849840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
