## `openjdk:12-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:f9ddde3445e8f719835c1f25c3b59d0fc8da91e3e69e74409987c3747457e139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `openjdk:12-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull openjdk@sha256:d2f832fa1d1a050b7aae5a1fdab33dfca7b889e802084f479b45c6b62ab09137
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5847563476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0867629f5fdc1bda21f268f849a89dd7b81975fa12b1667a2cbb32890c4ac1f`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 10:40:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 11 Jan 2019 10:56:03 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 11 Jan 2019 10:57:09 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 26 Jan 2019 10:56:30 GMT
ENV JAVA_VERSION=12-ea+29
# Sat, 26 Jan 2019 10:56:32 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/29/GPL/openjdk-12-ea+29_windows-x64_bin.zip
# Sat, 26 Jan 2019 10:56:33 GMT
ENV JAVA_SHA256=7fd493692d7468f6822c7aaf44d3609a45d14c87b0a085f19d40be119d608d47
# Sat, 26 Jan 2019 10:59:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:59:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3a08c54d06bafe75319fad9ebe015d3e16d44a6879a0a604dbb581cbb76dfd`  
		Last Modified: Fri, 11 Jan 2019 11:28:58 GMT  
		Size: 5.2 MB (5226451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0daf856b002247121d542d95cf513ee3ef13616731845c64163bc7dfd43128e`  
		Last Modified: Fri, 11 Jan 2019 11:34:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553b23308e27d9c21b72a109228677de7ca7fbe6f9fec47154767dfcda874ae`  
		Last Modified: Fri, 11 Jan 2019 11:34:17 GMT  
		Size: 5.2 MB (5199114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85daf26d0f18a0ced7672c33c6c5d0734c743856dff516c5769f3da093252885`  
		Last Modified: Sat, 26 Jan 2019 11:29:28 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f875690cbcc09d59d66b732bbafa7fc9e37234127f93140cc93f76c0e92403e`  
		Last Modified: Sat, 26 Jan 2019 11:29:29 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b2f2c8068741687c26c5aff3900fae0c6efcf8f143fb08fe09f2bf90307153`  
		Last Modified: Sat, 26 Jan 2019 11:29:29 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d40820a7b7a47d1e532c5f4e1ce5bb766c1e584198e87625def951d77d65fb3`  
		Last Modified: Sat, 26 Jan 2019 11:33:16 GMT  
		Size: 201.3 MB (201314587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9286d0edd5ebe328194d8502aa962d2fe83004c34b1d3082f723805d179cdc1a`  
		Last Modified: Sat, 26 Jan 2019 11:29:28 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
