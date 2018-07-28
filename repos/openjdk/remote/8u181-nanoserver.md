## `openjdk:8u181-nanoserver`

```console
$ docker pull openjdk@sha256:9b6cab21d3442811a332e0fea11215e27253b1b5aabdb59e939c2a079978d230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64

### `openjdk:8u181-nanoserver` - windows version 10.0.14393.2363; amd64

```console
$ docker pull openjdk@sha256:1ea8a8960e12bc1c7f799017c173afeafcdef9f35ba23ef328a29c89bc5302cf
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.2 MB (528234073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8849431bab0451c08978497b76a5d9036d6a93957015525e10020b29f9b5c4fe`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:01 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:44:58 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Jul 2018 09:45:40 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Wed, 11 Jul 2018 09:45:41 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Jul 2018 09:46:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 28 Jul 2018 09:47:27 GMT
ENV JAVA_VERSION=8u181
# Sat, 28 Jul 2018 09:47:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Sat, 28 Jul 2018 09:47:29 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Sat, 28 Jul 2018 09:47:30 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Sat, 28 Jul 2018 09:48:52 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d4a9b16fd154d065649f42ee7ac674690d46dbe6ad2398a58166c37c85ca64ed`  
		Last Modified: Tue, 10 Jul 2018 21:16:01 GMT  
		Size: 166.8 MB (166830055 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c00083f7064e157d9aa12ed2cde81fc21da017ab3b1d2d05cf45ee282d465ddd`  
		Last Modified: Wed, 11 Jul 2018 09:56:07 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d7a6645036c8c0f4a1d6d442c92a0d6214d2cb7d46da2abc9bcd951455fa57`  
		Last Modified: Wed, 11 Jul 2018 09:56:06 GMT  
		Size: 930.8 KB (930778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd0ad8d0a8d35c51bbd7a4f1ac2990362b3b6d022d308e7612624b35b34470c`  
		Last Modified: Wed, 11 Jul 2018 09:56:06 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcae2d73248ed8cb8b131362bdf56cf33e83e1a65bcc40aa7a11c8c87a8452b`  
		Last Modified: Wed, 11 Jul 2018 09:56:06 GMT  
		Size: 846.2 KB (846242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d0d00b7db19705a16a79c7dd7cf8d9fb4b8c6da5491785a6292ff26a33dbf9`  
		Last Modified: Sat, 28 Jul 2018 09:54:33 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad044a1bbcc990306d02569e5ffb95fcca9e9e23f00f928ec829db0ca839cf`  
		Last Modified: Sat, 28 Jul 2018 09:54:33 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee9ea4f0167bab831d7ebb5cb5a774d2ba062250ba971a68a57334b6df4ea3f`  
		Last Modified: Sat, 28 Jul 2018 09:54:35 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3537e7363e0ae90251d4daff69b5ede41990f04e471ee71cf117ea404ba68e`  
		Last Modified: Sat, 28 Jul 2018 09:54:33 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9996ca53ada341d77f1a95800cd4e4126624e3330e61e1ace06aaeb0a35b044f`  
		Last Modified: Sat, 28 Jul 2018 09:54:52 GMT  
		Size: 106.9 MB (106930307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
