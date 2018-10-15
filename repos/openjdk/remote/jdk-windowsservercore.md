## `openjdk:jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:f179005e5fe3f980bb6f64de3986cddf4e8347442d79f08c0661a648d4305f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64
	-	windows version 10.0.16299.726; amd64
	-	windows version 10.0.17134.345; amd64

### `openjdk:jdk-windowsservercore` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:2d9b5d8f915064adf9972f8f04f934f425290aeae8831a008ff8201a1cbde82d
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5794409106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b794a2774c0d83ec8fad1b259864ee4828126fce7d70920a5e846de51cd2f89d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:34:29 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 10 Oct 2018 10:35:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 10 Oct 2018 10:35:51 GMT
ENV JAVA_VERSION=11
# Wed, 10 Oct 2018 10:35:52 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_windows-x64_bin.zip
# Wed, 10 Oct 2018 10:35:53 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Wed, 10 Oct 2018 10:38:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 10 Oct 2018 10:38:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4741735dc58b1f06b8e3b2e05e24bc256e9a963a74df910de53318659dd96943`  
		Last Modified: Wed, 10 Oct 2018 11:05:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3c3b0b5eac7e019e4cd15ea921d6135614e4be4eaef048647fc0fe5d494fb`  
		Last Modified: Wed, 10 Oct 2018 11:05:44 GMT  
		Size: 5.1 MB (5092681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e757b448a5be632e67a5b8ccec2eb5af2e5ebedddf2bcb7509d205b8fc9827b`  
		Last Modified: Wed, 10 Oct 2018 11:05:39 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f4ff5a37d1af4e275fac4a70746debf9063e962e3470b8116c63807588a48`  
		Last Modified: Wed, 10 Oct 2018 11:05:39 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88c2d3f39a7cb871235a09702a4c4a31a46d8fa13ef436270f3fc82354f4815`  
		Last Modified: Wed, 10 Oct 2018 11:05:39 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684efbf473f06881eaf4deb87e353f76174f5c95e86dd4f0993e8428428d1cb`  
		Last Modified: Wed, 10 Oct 2018 11:06:18 GMT  
		Size: 192.2 MB (192198276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15c92d2df64bcd91ca133248bce3ae5a55597cb846ef7eaa12e7b602a6c2ace`  
		Last Modified: Wed, 10 Oct 2018 11:05:39 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-windowsservercore` - windows version 10.0.16299.726; amd64

```console
$ docker pull openjdk@sha256:c575080fd845b0cb388c5b6cb3b58bcde91322c6bd46b26f23bc0612b5293bed
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3332950365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c3c7176f517b9179d790b5dae8fa97f4e1137356bbc8a6377273bd770ec947`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Wed, 10 Oct 2018 09:42:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:38:40 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 10 Oct 2018 10:39:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 10 Oct 2018 10:39:33 GMT
ENV JAVA_VERSION=11
# Wed, 10 Oct 2018 10:39:34 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_windows-x64_bin.zip
# Wed, 10 Oct 2018 10:39:35 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Wed, 10 Oct 2018 10:41:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 10 Oct 2018 10:42:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf0d3e1d36b0cda001b50a29a3b2898c0f456696a4491b2d5536e4af41eed468`  
		Last Modified: Wed, 10 Oct 2018 10:08:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341d61b107ab740c1bf6ae7bd058369784b6704262b98e41358253e5a14f960`  
		Last Modified: Wed, 10 Oct 2018 11:06:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e182a5912945e1aa6bed83b81f685d70bff2026c3a6790b1aa42ac6a627e65a2`  
		Last Modified: Wed, 10 Oct 2018 11:06:37 GMT  
		Size: 4.8 MB (4763829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4c525e4cf89a9b5113cdaca1e4f667b11f966a691f3894beed1b42cae8769c`  
		Last Modified: Wed, 10 Oct 2018 11:06:33 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724fc294a295a8cf7ee37c57b0335caf69444442a53e0bd2328f54d5b16aed89`  
		Last Modified: Wed, 10 Oct 2018 11:06:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6626f652f36c4406da453de858cf5ef06b822877d9c7ff229c543c09e7b510ec`  
		Last Modified: Wed, 10 Oct 2018 11:06:32 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a03f3b8d0cbbf7143dc45603bd76a0db3a4c63798e973a2f7df1ae55d1379fd`  
		Last Modified: Wed, 10 Oct 2018 11:06:56 GMT  
		Size: 187.4 MB (187420556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbeee20f95bac42fae33fa109f45f27ba2fe5c5ca26316bdd127a3174236b0f`  
		Last Modified: Wed, 10 Oct 2018 11:06:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jdk-windowsservercore` - windows version 10.0.17134.345; amd64

```console
$ docker pull openjdk@sha256:f19b2786e875e99f946a7e215088709fabce6d803b07808837300d231b7efef6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2417431419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c26b161cb9dc3829d835290ebf993dfc3a4bc83becf6a27c3bd7d5748f8240`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 01 Oct 2018 21:32:36 GMT
RUN Install update 10.0.17134.345
# Wed, 10 Oct 2018 10:30:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:42:07 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 10 Oct 2018 10:42:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 10 Oct 2018 10:43:00 GMT
ENV JAVA_VERSION=11
# Wed, 10 Oct 2018 10:43:01 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_windows-x64_bin.zip
# Wed, 10 Oct 2018 10:43:02 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Wed, 10 Oct 2018 10:44:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 10 Oct 2018 10:45:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eba07b94d5f77aa900bf02c4247fc580222254782681cc3c74a7cf9566e8890a`  
		Last Modified: Mon, 08 Oct 2018 19:44:48 GMT  
		Size: 570.0 MB (570044587 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:27edf24f1e4fe928232c90f140f4c86cd7eed50efd07761c6c0832c7bfe26d30`  
		Last Modified: Wed, 10 Oct 2018 11:04:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d309c306da22f0177f64e3aff149d29a5eca16ca32db1e1d62cbe8b565e426`  
		Last Modified: Wed, 10 Oct 2018 11:07:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d316431232ea7799085aa82eb5b64d206e4dee9d957c315c14f771b62739a9f3`  
		Last Modified: Wed, 10 Oct 2018 11:07:14 GMT  
		Size: 4.7 MB (4684205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791e218215966dc482d7876a8574e712a7e7889538aba605a1657ff8582c6bd9`  
		Last Modified: Wed, 10 Oct 2018 11:07:09 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4031b37dff5e379a7dab7bf72d27949604bed29f2d68771d173b48664205de74`  
		Last Modified: Wed, 10 Oct 2018 11:07:10 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90277a784645570f448e5c54b67cdde995250191c35040948fae829019eb16a8`  
		Last Modified: Wed, 10 Oct 2018 11:07:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30efc7b73e7eab207f2b0b3ce61d5c9c0c25d06791de6ccc8d3aa93180485da5`  
		Last Modified: Wed, 10 Oct 2018 11:07:42 GMT  
		Size: 183.0 MB (183007184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d96583d1696dccb8c7dabeb078246e9529ff4fa2edddc66b4d4695f159776a`  
		Last Modified: Wed, 10 Oct 2018 11:07:10 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
