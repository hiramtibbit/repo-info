## `openjdk:13-ea-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:ee31d47ead074977639f9149cf2f09a5d335baa2cee1ef8655da16b83b1db3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `openjdk:13-ea-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:13c73d2fc0680864a0cc43a754cf7f6c6d4f146c497cee80b74e70c503e58a14
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2499529775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08387b82fdaa33fb0754cd9c36e81c81fc736b65bb967b0ecf9556c04fa0460e`
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
# Fri, 24 May 2019 23:19:04 GMT
ENV JAVA_VERSION=13-ea+22
# Fri, 24 May 2019 23:19:06 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/22/GPL/openjdk-13-ea+22_windows-x64_bin.zip
# Fri, 24 May 2019 23:19:07 GMT
ENV JAVA_SHA256=710888429ea792087a98d43a1a66b6329c2b810be5684494208f722559e731d0
# Fri, 24 May 2019 23:21:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 24 May 2019 23:21:20 GMT
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
	-	`sha256:a619e524fafb9164429e40ef03bd90da5eb43a875ff67e116db7c1e5ab287452`  
		Last Modified: Fri, 24 May 2019 23:50:00 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c16cde9d0b668f617fce0b2136e4515fab3b970b57922fad2ac01fb2fe2e7b4`  
		Last Modified: Fri, 24 May 2019 23:50:00 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84f1c9173b3285d0e9587dec116b2afcffc8008a386f33e3346a543dd1bff3b`  
		Last Modified: Fri, 24 May 2019 23:50:00 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30548938b0a5eb9b34d2fb1c37beb3d53890122918df13a567006dc5e42fb333`  
		Last Modified: Fri, 24 May 2019 23:50:28 GMT  
		Size: 191.0 MB (190981116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4599f470df127a2730f557d356b3245f2a3cb4257c1ce6da36cb296a12116bf2`  
		Last Modified: Fri, 24 May 2019 23:50:00 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
