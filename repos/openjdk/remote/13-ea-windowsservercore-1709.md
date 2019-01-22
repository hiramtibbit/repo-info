## `openjdk:13-ea-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:9b8bec47dda4b778813c166a922781848c9f2de854d9b17b187e41fc4a286531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.904; amd64

### `openjdk:13-ea-windowsservercore-1709` - windows version 10.0.16299.904; amd64

```console
$ docker pull openjdk@sha256:448471081ac2f46647ddb5e9e635d2e735c807fcc7c568acf20052a944f2db51
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3353056880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f16161d8afb2d2e2f062c3749977d19f945f6b2925f146a81de2498b953748f`
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
# Fri, 11 Jan 2019 10:46:07 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 11 Jan 2019 10:46:51 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 22 Jan 2019 10:18:30 GMT
ENV JAVA_VERSION=13-ea+4
# Tue, 22 Jan 2019 10:18:32 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/4/GPL/openjdk-13-ea+4_windows-x64_bin.zip
# Tue, 22 Jan 2019 10:18:33 GMT
ENV JAVA_SHA256=72066e2a67281d5757855d21a3a7fc04bd38fe6c650e157c9bf9c720627386dc
# Tue, 22 Jan 2019 10:20:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 22 Jan 2019 10:20:51 GMT
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
	-	`sha256:97fec9d5d2640a2bcfd454512303b570bc47dc96512aae21c248dad3ec86040d`  
		Last Modified: Fri, 11 Jan 2019 11:30:38 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d8d1674f3f8a515c49654e92f34b599712592edb21fb913dabe43e0720acef`  
		Last Modified: Fri, 11 Jan 2019 11:30:41 GMT  
		Size: 4.7 MB (4740427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ed3fea9371325eda369cdad60f6ba91a532acdd459433ebf4853b546b6d841`  
		Last Modified: Tue, 22 Jan 2019 11:25:51 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6242a652b36d2cd38888599bbb8df24896b05e850dc067e745af1a1a15bb2a78`  
		Last Modified: Tue, 22 Jan 2019 11:25:51 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca65ed997c8ddd1d1e9a796ad324b7c5714851f04b98821d9f4173725372c4f`  
		Last Modified: Tue, 22 Jan 2019 11:25:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7999daf277f17f2396b70c56448cc31326667d22ed60c999aa5f3528ebcc0805`  
		Last Modified: Tue, 22 Jan 2019 11:26:23 GMT  
		Size: 196.5 MB (196467986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d3cfc48faf0b8f59cbc7f0ddb4f9d14f8d0537bdbc04d11ce1d4d698106870`  
		Last Modified: Tue, 22 Jan 2019 11:25:51 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
