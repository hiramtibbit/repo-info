## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:c8445967c4acd125d4314677ae4a9d38e9abd6513e9d1e55e0b15287441f3b79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2969; amd64
	-	windows version 10.0.17134.765; amd64
	-	windows version 10.0.17763.437; amd64

### `python:rc-windowsservercore` - windows version 10.0.14393.2969; amd64

```console
$ docker pull python@sha256:e26382741fbb0e449a830432fd08fa7812cc57f4c55c79a61790b539f54558b9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5767010878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32f65fb2be32eba12b5d0fed2fa5ff88a784b5878a26ed170adc23b98ca5b12`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Mon, 06 May 2019 17:18:54 GMT
RUN Install update ltsc2016-amd64
# Wed, 15 May 2019 12:35:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 13:30:29 GMT
ENV PYTHON_VERSION=3.8.0a4
# Wed, 15 May 2019 13:30:30 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 15 May 2019 13:33:14 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:33:16 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 15 May 2019 13:35:04 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:35:06 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ce1cc4db99bfa306954ff239d7727b2b0245bd5ec8b5f9dc7bbe899ad1332872`  
		Last Modified: Mon, 13 May 2019 20:17:42 GMT  
		Size: 1.6 GB (1632134961 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b48eb2d408a626a484fe196b9b128fc9d49431157edd27f53c27b86a3f2c4af4`  
		Last Modified: Wed, 15 May 2019 13:04:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b0164a3eae0c4eb7df032fac5ce2f230452fefb417c6a37330cad09de79c1b`  
		Last Modified: Wed, 15 May 2019 14:05:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f266836fe20d350687055d1e6655358d0ad64d9d2c1cf82140d1feb87de8d89`  
		Last Modified: Wed, 15 May 2019 14:05:45 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4af0157617ff157b93f4abe09bb164126d15c8ac4a4bb4c58efa70f741a951`  
		Last Modified: Wed, 15 May 2019 14:06:10 GMT  
		Size: 54.9 MB (54851441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d53ea402b8e922da48473875c35179838e4dfad0f78c5ad6e0f61ae8177ca5`  
		Last Modified: Wed, 15 May 2019 14:05:45 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ff6bac971e1fd6a0bc7604bff1d6ca0d13eb4d857c85a8538df45f4f406cd6`  
		Last Modified: Wed, 15 May 2019 14:05:57 GMT  
		Size: 10.0 MB (10032520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1869dec65e962a96d79b2a99247d0a6a5f5a41a0a130e03d5e4d3818b6732f0`  
		Last Modified: Wed, 15 May 2019 14:05:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-windowsservercore` - windows version 10.0.17134.765; amd64

```console
$ docker pull python@sha256:24874ee9d16ba4ec12fb375fd71c11792f984924d7019457ba67cf292473f28f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2357386006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea104e18cb2f5da7a8379c063237d65497b37c7d7d921982bb86f739c16f487`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 16:51:51 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:45:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 May 2019 13:35:14 GMT
ENV PYTHON_VERSION=3.8.0a4
# Wed, 15 May 2019 13:35:15 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 15 May 2019 13:37:34 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:37:35 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 15 May 2019 13:38:36 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 15 May 2019 13:38:38 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d11c35baa5123d531329d957165cc87e56a9c73068ea0b074e16dd23c8c06f5`  
		Last Modified: Mon, 13 May 2019 20:35:19 GMT  
		Size: 642.6 MB (642561849 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:58d321368bbf68a108d3298dd40a5ce2d47e3b2d59969e159f05e4fac7b4c259`  
		Last Modified: Wed, 15 May 2019 13:06:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6b266220f7a33c2665e07010ed13580dbeab1821ad2435c2e209a45163fba2`  
		Last Modified: Wed, 15 May 2019 14:06:34 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8a4a4414d86d465406fb06f7371bec5cba6f645f1334846c2ecef548911aaf`  
		Last Modified: Wed, 15 May 2019 14:06:31 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9aa174455e065c16d44e08119119f37e1c08224bbb772fa247d5aa2bfef5fb8`  
		Last Modified: Wed, 15 May 2019 14:06:53 GMT  
		Size: 50.0 MB (49961960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c6bc156ea8397743134f948d0e5a858ee2346e074e451c659f4093433ba36a`  
		Last Modified: Wed, 15 May 2019 14:06:31 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1604b1a3138ff5837cd692c5af64543eaaeb1b322ae1711b7a987e1ad1f7dd23`  
		Last Modified: Wed, 15 May 2019 14:06:41 GMT  
		Size: 5.2 MB (5167894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03352fd6a8b8c360550d4596d3ce2be74716d790bdd108fb1685b50cd4459984`  
		Last Modified: Wed, 15 May 2019 14:06:32 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-windowsservercore` - windows version 10.0.17763.437; amd64

```console
$ docker pull python@sha256:7424a880257a8d45326106b2c7d9588fa63d7b59e20b8f12319bc45959e8af3b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2028562847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c487f1311f1827f1bd92654fd52cf11d7cd02a0a9a7bd1b2348af09755a45bd8`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 08 May 2019 09:23:31 GMT
ENV PYTHON_VERSION=3.8.0a4
# Wed, 08 May 2019 09:23:32 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 08 May 2019 09:25:59 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 08 May 2019 09:26:00 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 09:27:03 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 08 May 2019 09:27:04 GMT
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
	-	`sha256:fde21fa9d82838903f3f1b5d9ef4a51b5a4738e4339b0c5e111a731ae13bef0e`  
		Last Modified: Wed, 08 May 2019 10:14:58 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fca7db1560ec4017bf6d7373d86824e47c2e2ab13ea430a744ae118a86ed82e`  
		Last Modified: Wed, 08 May 2019 10:14:55 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5326e7ce11e032e55b55ea8dfdf24282095cdf61400113f793a7ed83a8cbd8bf`  
		Last Modified: Wed, 08 May 2019 10:15:17 GMT  
		Size: 49.5 MB (49524832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e248e6f9cb6a6f9b1db6c6766f463851f369dbefc3e16219263a776871c85acf`  
		Last Modified: Wed, 08 May 2019 10:14:55 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac81e70cdc164b4baa4ef8e2768568e571c8a2631f762862a803103853c285c8`  
		Last Modified: Wed, 08 May 2019 10:15:04 GMT  
		Size: 5.2 MB (5168742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0123eb85934f81be986ac2a55d3b696cf847b57cca4bfc52ad6660e4667f928`  
		Last Modified: Wed, 08 May 2019 10:14:55 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
