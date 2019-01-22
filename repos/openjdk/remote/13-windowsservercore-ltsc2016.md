## `openjdk:13-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:35f69b66fbe1143ff057dbe13978917611cb3acf07796b47291aa99de8941680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `openjdk:13-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull openjdk@sha256:470964d065138a3b85a53ac05a596923e313bdc9d9e796e4f23955ca17e4cc29
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5847645725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515464bd791b07f96499976cac6d3fa35e7bd7acba7d2f862f3cbf7064869598`
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
# Fri, 11 Jan 2019 10:40:07 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 11 Jan 2019 10:41:17 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 22 Jan 2019 10:15:27 GMT
ENV JAVA_VERSION=13-ea+4
# Tue, 22 Jan 2019 10:15:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/4/GPL/openjdk-13-ea+4_windows-x64_bin.zip
# Tue, 22 Jan 2019 10:15:29 GMT
ENV JAVA_SHA256=72066e2a67281d5757855d21a3a7fc04bd38fe6c650e157c9bf9c720627386dc
# Tue, 22 Jan 2019 10:18:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 22 Jan 2019 10:18:22 GMT
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
	-	`sha256:08b43e2df9d55695e48b2edf489e5f685fd4c09c1463d369f17f4039cb28b785`  
		Last Modified: Fri, 11 Jan 2019 11:28:55 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa42ce2f42be0ed315ffb3d071c610edd70114d8150402a61b4fe8b0bcfe634`  
		Last Modified: Fri, 11 Jan 2019 11:29:00 GMT  
		Size: 5.2 MB (5196580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac810dfea96b6f9628d710235eafc4f30dcde6025a1e28392bd580eec7c6a805`  
		Last Modified: Tue, 22 Jan 2019 11:24:07 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216bbf5b93fdd272d89795bea763a69ec282697d7ac0308f77bdaf182b588d1e`  
		Last Modified: Tue, 22 Jan 2019 11:24:07 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e04199a74b6045485ae03e9e7c46d5c60ad8058e8df973a82feb99f36661545`  
		Last Modified: Tue, 22 Jan 2019 11:24:06 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3a9d34d7cbf95bbc2da6776ef817512c2b76abab72dac490d1e544137829fb`  
		Last Modified: Tue, 22 Jan 2019 11:25:22 GMT  
		Size: 201.4 MB (201399370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78fef7b0f307c773c0a5a2a56e99e8dd5fe221949a76084efe46f7b38413bbf`  
		Last Modified: Tue, 22 Jan 2019 11:24:07 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
