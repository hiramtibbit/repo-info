## `openjdk:13-ea-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:b0d57f69caebfa3201dd3199b1e6d8e93048a126d89eeccbe813ad8b38eea372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `openjdk:13-ea-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:5838417effdad29d63cdd56289703fd5fc040d8cb3b81acde0575b7cbb6593cf
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2499577864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3794b01ee137ebb274940623e05176868e2f00468e9e8a1e24b2fa19c94c2793`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:06:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 22 May 2019 15:06:30 GMT
ENV JAVA_HOME=C:\openjdk-13
# Wed, 22 May 2019 15:06:55 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 01 Jun 2019 01:17:31 GMT
ENV JAVA_VERSION=13-ea+23
# Sat, 01 Jun 2019 01:17:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/23/GPL/openjdk-13-ea+23_windows-x64_bin.zip
# Sat, 01 Jun 2019 01:17:34 GMT
ENV JAVA_SHA256=35ca5f45948fbd5e98126a01605d96f070a338592642a0a4d5cec974a0177531
# Sat, 01 Jun 2019 01:19:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 01 Jun 2019 01:19:28 GMT
CMD ["jshell"]
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
	-	`sha256:4d16c06c6a7196fcdb374fc857f732b663b6b276b02f7c5551e6a45364157750`  
		Last Modified: Wed, 22 May 2019 16:01:57 GMT  
		Size: 4.8 MB (4769119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3051b5b9d69a5aa6a20082a780650a256b00c97a11e35fe6aab83f87c5299c01`  
		Last Modified: Wed, 22 May 2019 16:01:55 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba47d338939684b6a0ebeb820a050eb26f7f70d8b13c54131c5312e82550b766`  
		Last Modified: Wed, 22 May 2019 16:01:56 GMT  
		Size: 315.7 KB (315694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826598342371b204355fa33ae9f054779b51f8aa170de79f8b9e6f87ce975dd`  
		Last Modified: Sat, 01 Jun 2019 01:27:58 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e765ba8523f02f9ba5f7065773204dfef594c0282e80a2bab2e5c478dc3055c2`  
		Last Modified: Sat, 01 Jun 2019 01:27:58 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e945d8ea774d72dfed680377054b5a421738f6fb5fb9450ffdf8f3f9e621cea9`  
		Last Modified: Sat, 01 Jun 2019 01:27:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4d6647095187566dfd069d54de108bd99e8f79fcfc1cfc3c248e0b73271ab3`  
		Last Modified: Sat, 01 Jun 2019 01:28:37 GMT  
		Size: 191.0 MB (191029204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a298c745deba6fe6301fea14824f76a5a225eb36bf3327b42e20e913b647370`  
		Last Modified: Sat, 01 Jun 2019 01:27:58 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
