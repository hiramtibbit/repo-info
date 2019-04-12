## `python:3-windowsservercore`

```console
$ docker pull python@sha256:c3620cdd1ce3a029584df38060693de7d199c16f1c6c118ca6c37a741aacf3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64
	-	windows version 10.0.17134.706; amd64
	-	windows version 10.0.17763.437; amd64

### `python:3-windowsservercore` - windows version 10.0.14393.2906; amd64

```console
$ docker pull python@sha256:4d2f40dc41769010e6e2203e9a74501d3ece9f90b3f1a3d3afe63181df6e1d94
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5702200035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0409cc0c626177d244f82481d2471527dab2f644de541385d779f079c760f334`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:11:25 GMT
ENV PYTHON_VERSION=3.7.3
# Thu, 11 Apr 2019 23:11:26 GMT
ENV PYTHON_RELEASE=3.7.3
# Thu, 11 Apr 2019 23:14:04 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:14:05 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Thu, 11 Apr 2019 23:15:52 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:15:53 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1aac0897bbf76e49edb075edaa7f42c0bb3d2259584141487b5b9422d3ad6f4`  
		Last Modified: Fri, 12 Apr 2019 00:05:25 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf7110b9edfcc0756d229a50253d7e6f7c6dc8c5351bacc5b0e4749f49fbb01`  
		Last Modified: Fri, 12 Apr 2019 00:05:22 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c472f676bbd79e99a9b8321ccf6925b0205a063968a970219caddc52618524ec`  
		Last Modified: Fri, 12 Apr 2019 00:05:47 GMT  
		Size: 49.8 MB (49843478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f0dde4e23772d62037e461da2283fc3015a94175ed4ba09da7db5d0098aaca`  
		Last Modified: Fri, 12 Apr 2019 00:05:23 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3c39892d8a108f3cea25c0047e1d73406f018560aa9e4f0bd4ad5ae2a90b8d`  
		Last Modified: Fri, 12 Apr 2019 00:05:35 GMT  
		Size: 10.0 MB (9980816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9778750d70d6ad3fa3536c2bd822df28b09f285087f4a252d981b5c7cf9f569d`  
		Last Modified: Fri, 12 Apr 2019 00:05:22 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-windowsservercore` - windows version 10.0.17134.706; amd64

```console
$ docker pull python@sha256:79e70a7328f583bb77a361ee7b51f9a23e0b16d5e8b1c75b600062007cf33470
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2310851691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b847f91b9ae2b270e34790289b9be9817d0a3c13e5f6b4326bd9314fbed4afa2`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:20:22 GMT
ENV PYTHON_VERSION=3.7.3
# Thu, 11 Apr 2019 23:20:23 GMT
ENV PYTHON_RELEASE=3.7.3
# Thu, 11 Apr 2019 23:22:44 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:22:46 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Thu, 11 Apr 2019 23:23:54 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:23:56 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190158793be727f3b8f5ae272c9329b2a8363bd1548c96ce16629b8771c3db5b`  
		Last Modified: Fri, 12 Apr 2019 00:06:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49532e7e7f5583b8058169477af16b7055f0f5b15ea64851c913b0bdd062c0f`  
		Last Modified: Fri, 12 Apr 2019 00:06:54 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b159a5b2f82edd09fd72f95c068acdd9b54a68b88388ef30523d3b851a153678`  
		Last Modified: Fri, 12 Apr 2019 00:07:19 GMT  
		Size: 49.4 MB (49388168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e8b411f4eed9bef1276fcf0b64cc1c959d178173f93bf50712be4af8fdbbff`  
		Last Modified: Fri, 12 Apr 2019 00:06:53 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01806744ded1309bd06ea497801f1d49679223c1176a0fbe0cf7916f327366d`  
		Last Modified: Fri, 12 Apr 2019 00:07:04 GMT  
		Size: 5.1 MB (5106892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c34d61a2eb157b1471a8cab0df062a0099ed93cc8c4df34a8468e019069b72`  
		Last Modified: Fri, 12 Apr 2019 00:06:53 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull python@sha256:a0879564203a301f2a9a6c689d41cfead913e26762d7259707c2c51e6c89ed6b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2027996388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abaf8d2948ede93a446bb10f3f0240f1dcc8757b970444c58d88838fe6516ca8`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 11 Apr 2019 23:24:05 GMT
ENV PYTHON_VERSION=3.7.3
# Thu, 11 Apr 2019 23:24:06 GMT
ENV PYTHON_RELEASE=3.7.3
# Thu, 11 Apr 2019 23:26:19 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:26:20 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Thu, 11 Apr 2019 23:27:24 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 11 Apr 2019 23:27:25 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d415f1d8f804f1d718f312c2620837357085eb64ba360f0e165ce60570ec4fad`  
		Last Modified: Fri, 12 Apr 2019 00:07:42 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e604631340bfae75f1084374db235fe2a57df33ee50e88889391e3c216889cd9`  
		Last Modified: Fri, 12 Apr 2019 00:07:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90414e5c29a8266d7aadc531238ae97047c3631daf7a25334d98f8b85847f34`  
		Last Modified: Fri, 12 Apr 2019 00:08:03 GMT  
		Size: 49.0 MB (49003831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cfc0061a76c9d53c799ac83e8d9815af375b066331a7024384a6c9b7249057`  
		Last Modified: Fri, 12 Apr 2019 00:07:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551e6ddedf33bc3fa662210edb9509c0a84b69c4fe4036bb8c77913c37d35a9d`  
		Last Modified: Fri, 12 Apr 2019 00:07:50 GMT  
		Size: 5.1 MB (5123261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c566a80ad21ef57d1e94bc6ce3a5dce0a5388962e2d86f3caafcfeecc682b106`  
		Last Modified: Fri, 12 Apr 2019 00:07:39 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
