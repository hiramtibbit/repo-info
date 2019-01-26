## `openjdk:13-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:322eb3f4898264d9e19a3db89f5d85dd78607e5a5d097e559dd5535cb0012355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `openjdk:13-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull openjdk@sha256:17564c6423720283c645799b42391d719ef0079c9141b5c9ef463825e7148944
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5847667870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8490c20cbc67594f7b86d0a1a4efa929f2f40c20b350b2bb7c3c4283a02979da`
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
# Sat, 26 Jan 2019 10:43:21 GMT
ENV JAVA_VERSION=13-ea+5
# Sat, 26 Jan 2019 10:43:22 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/5/GPL/openjdk-13-ea+5_windows-x64_bin.zip
# Sat, 26 Jan 2019 10:43:23 GMT
ENV JAVA_SHA256=bbac8dc310afb0b3bed5d2f8e3acaac27a7b544ee2d863c8e2d4292eb48c2aa8
# Sat, 26 Jan 2019 10:46:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:46:26 GMT
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
	-	`sha256:4f64b3e8f9cdf56718eabc6367dc38957f754144e2be728452d8a0eaa9ea874c`  
		Last Modified: Sat, 26 Jan 2019 11:21:22 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77af97c52d9c5d712ef7e5c43816243413e194e596771e77b681f97090053d6c`  
		Last Modified: Sat, 26 Jan 2019 11:21:21 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534efb9c3382c7e555b0ca5ed2cedac908ff8a65c3725d92683eac5fff0db002`  
		Last Modified: Sat, 26 Jan 2019 11:21:21 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0760bf9e688a1c045b456b0868bf5ea29600b234178c5e9d3399592a7a0f6102`  
		Last Modified: Sat, 26 Jan 2019 11:22:36 GMT  
		Size: 201.4 MB (201421513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f9321820ca2f11cbbabba138b2000ae12d6131c5a3bc964a4fbf9aab35e3`  
		Last Modified: Sat, 26 Jan 2019 11:21:21 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
