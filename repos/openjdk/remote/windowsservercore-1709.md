## `openjdk:windowsservercore-1709`

```console
$ docker pull openjdk@sha256:c40b20285a18afd1b34e5375732d03fefde584c11e9a5e425021a2656c76bb0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `openjdk:windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:36fbbde34ec67bee695918a8c440a07ed8da6553159d58cca95fbe62a8c2a82d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3344019998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29dee732dbbeacda9668e0fcec2a200f881ca847f40101ba45563967477ff31e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Thu, 03 Jan 2019 04:08:43 GMT
RUN Install update 10.0.16299.904
# Fri, 11 Jan 2019 10:44:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:46:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 11:12:35 GMT
ENV JAVA_HOME=C:\openjdk-11
# Fri, 11 Jan 2019 11:13:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 11 Jan 2019 11:13:21 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 11 Jan 2019 11:13:23 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_windows-x64_bin.zip
# Fri, 11 Jan 2019 11:13:24 GMT
ENV JAVA_SHA256=289dd06e06c2cbd5e191f2d227c9338e88b6963fd0c75bceb9be48f0394ede21
# Fri, 11 Jan 2019 11:15:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 11 Jan 2019 11:15:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ee945370a9b4bb58ea63e33767041df2ecc306b6e73a231fe90d31980e26b05d`  
		Last Modified: Tue, 08 Jan 2019 18:00:22 GMT  
		Size: 872.8 MB (872755280 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:774e51f30ad2e236ae01fce26ad8420164c15c05a9cfbe2509381f0e2e789b85`  
		Last Modified: Fri, 11 Jan 2019 11:30:39 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70977a4f324a334bb094145e798f76dfe10b6cbbab23a590c3e085e6250fec6`  
		Last Modified: Fri, 11 Jan 2019 11:30:45 GMT  
		Size: 4.8 MB (4785398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd0f9bcef41531c08fe5328f291bb9c9b2b645472a174439a3298deb067c69c`  
		Last Modified: Fri, 11 Jan 2019 11:43:12 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b364e2acc05a0115f425467a19c5c3e3809c092a35372ab7eb0910111247946`  
		Last Modified: Fri, 11 Jan 2019 11:43:14 GMT  
		Size: 4.7 MB (4740163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c39dd7c1deec8b36e23fef1afead2682f1ec35eabe9fad8574139b3f9889b7`  
		Last Modified: Fri, 11 Jan 2019 11:43:10 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07269bcb84a06243a74f249fe09d90d00cf5745dea7c09c00dbe43782a3e6bc7`  
		Last Modified: Fri, 11 Jan 2019 11:43:10 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5757812c11fcb75a99c83c55fed679418b2a064cb8db0645a8a6c92aa00b9887`  
		Last Modified: Fri, 11 Jan 2019 11:43:10 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73faa4a79eb8aeeb19121fc7f022170b272622bddda2c874a09a3608e1e9787`  
		Last Modified: Fri, 11 Jan 2019 11:44:25 GMT  
		Size: 187.4 MB (187431383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4c86b1927b5519d7e19ba1f4f53132196a1a02fb965cb1a3cc96985e89d507`  
		Last Modified: Fri, 11 Jan 2019 11:43:10 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
