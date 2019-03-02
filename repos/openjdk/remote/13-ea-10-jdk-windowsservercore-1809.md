## `openjdk:13-ea-10-jdk-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:055ff4eaf4ede119504051381967a6a11a391fa485ac4b87364b8110ccc98870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.316; amd64

### `openjdk:13-ea-10-jdk-windowsservercore-1809` - windows version 10.0.17763.316; amd64

```console
$ docker pull openjdk@sha256:83d7f234113024cf2504cb4cd4005f32ff1c8dcbad324c3961cdf1f37e7df641
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2099038141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e00316566335840fe7d6f216b992bfd8f8dc878f1d190aa7fa17ec6a7f642d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:29:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:29:29 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 15 Feb 2019 10:29:56 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 02 Mar 2019 10:23:40 GMT
ENV JAVA_VERSION=13-ea+10
# Sat, 02 Mar 2019 10:23:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/10/GPL/openjdk-13-ea+10_windows-x64_bin.zip
# Sat, 02 Mar 2019 10:23:43 GMT
ENV JAVA_SHA256=499278b5a3d4dfd840cc42bfdf9d0b25cb50f71e16364b23c4cec9778447a93b
# Sat, 02 Mar 2019 10:25:30 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 02 Mar 2019 10:25:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef813a1585330dd985f09a5e87000a28ea47ed9abf3086e4b532f6b78ef978b2`  
		Last Modified: Fri, 15 Feb 2019 11:52:51 GMT  
		Size: 4.2 MB (4206856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad0f03bfafa9e7b2ba6cf93c9c8ad781bd810aa049afe42cda154b81d60257`  
		Last Modified: Fri, 15 Feb 2019 11:52:49 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1174688cc51543660d8f4c28674b8e0d6570fccb488dc4f9dfa7ca68529781bf`  
		Last Modified: Fri, 15 Feb 2019 11:52:51 GMT  
		Size: 309.5 KB (309532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310455d487c0920251ee0052dff2c94961252e0bbcb52975f52ab5a8ff0c0eb4`  
		Last Modified: Sat, 02 Mar 2019 10:34:46 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfcc33c89e30ed772073c18c2812db7fff457f8dce94b85d5353854ebd8d8bf`  
		Last Modified: Sat, 02 Mar 2019 10:34:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de6900a31b3c354fa8bd144d5e8c8bf605cd7d4590adc605798cf154d77f43e`  
		Last Modified: Sat, 02 Mar 2019 10:34:46 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3d98694e1325e7836aed033bff42be95a85894f81d8f8a2e4e59567bce8b60`  
		Last Modified: Sat, 02 Mar 2019 10:35:41 GMT  
		Size: 189.1 MB (189141661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3890d477940248b173a0df46dec1cae1ea6b03f64fd05ff024d1ba13f787c0`  
		Last Modified: Sat, 02 Mar 2019 10:34:46 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
