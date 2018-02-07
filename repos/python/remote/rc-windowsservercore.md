## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:683ecb67bd100743a559b99529708d9459b642aaf48a7b0dd6566f575214118f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64
	-	windows version 10.0.16299.192; amd64

### `python:rc-windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull python@sha256:683b5e30aec5e60c9b50e6afffe60666b77ea9ffb7c96f7fb8ec6dfe155a5726
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5435044144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e4fdcfabb5fbd965ce727a5b30b61e03a48a7932f452813cdf64e3707f52c5`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:02:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Feb 2018 17:25:58 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 17:25:59 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 07 Feb 2018 17:28:53 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Feb 2018 17:28:54 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 17:30:29 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 07 Feb 2018 17:30:30 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c86d0434e36d69287bea586f96045245d5ee4f04e4e2a5edf6881dbbfdc628c3`  
		Last Modified: Fri, 05 Jan 2018 10:13:30 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65dc9be9b474bcb92ee0a982d8052457843742d226b9beebc5e54271609217a`  
		Last Modified: Wed, 07 Feb 2018 17:41:42 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bba70c762fe8c9e935eb49b59d93556a519ff6e1d5733886aa4f6e9b859f70`  
		Last Modified: Wed, 07 Feb 2018 17:41:39 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e39bc6594713eaedd9c167ce4192d466e4a93c4a519ffa42f5c73b8cb1c233`  
		Last Modified: Wed, 07 Feb 2018 17:42:07 GMT  
		Size: 51.7 MB (51706485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b27601c3cd74a0c50a57f2de713f694d8c5484f1fdbd03187fd513a5bf44e8`  
		Last Modified: Wed, 07 Feb 2018 17:41:38 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee54e5ac655b7eb7b1670008c59db5681b287214608cbd10f2358aa2247ca81`  
		Last Modified: Wed, 07 Feb 2018 17:41:51 GMT  
		Size: 9.3 MB (9326485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec61eaa60d91562a53654ba2a7facfee115d5cd21ce0275ce7c9801c8ed5b74`  
		Last Modified: Wed, 07 Feb 2018 17:41:38 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-windowsservercore` - windows version 10.0.16299.192; amd64

```console
$ docker pull python@sha256:70217f1e069fd94bf2d0d9f11747f9cd66a280e1040a45d6e96618c05d7680e7
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 GB (3019892043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfdd339b33c0e7a7340ff5614fc9973fd6875fb1af5cd515fe74e7563e3ca229`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 03 Jan 2018 04:46:54 GMT
RUN Install update 10.0.16299.192
# Mon, 08 Jan 2018 17:27:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 07 Feb 2018 17:30:42 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 17:30:43 GMT
ENV PYTHON_RELEASE=3.7.0
# Wed, 07 Feb 2018 17:33:40 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 07 Feb 2018 17:33:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 17:35:23 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 07 Feb 2018 17:35:24 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f887ccb8077bdc1f1fedd2da6066bb3542c528f5d103b40659ac25785ba4b9b`  
		Last Modified: Fri, 05 Jan 2018 19:38:30 GMT  
		Size: 689.7 MB (689720734 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:189c9822c1fc60043703fa16f44b1cab80d3a786d35bd6b61628d2b3f1fb9635`  
		Last Modified: Mon, 08 Jan 2018 17:34:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb2229e3dbf51e26859d3a60834f919a5929f8d41c74ec3458fc6f07a20fb65`  
		Last Modified: Wed, 07 Feb 2018 17:42:25 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a87e94c1413d81df67b7c1a247e1f02b882781fbceece8b5b630f8e87360469`  
		Last Modified: Wed, 07 Feb 2018 17:42:21 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca131cd23dbd952c9e0057a4bd3840e475764a07ea800d654c01cc3f9fecd92`  
		Last Modified: Wed, 07 Feb 2018 17:42:49 GMT  
		Size: 46.9 MB (46915783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debd7b2be6bc25973694226ccce4306506c9ef717ac74e217e52f07ed212cc22`  
		Last Modified: Wed, 07 Feb 2018 17:42:21 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79046d8e98792dc72535fe0204531c129b10ad33d450c309e48370b5967d218a`  
		Last Modified: Wed, 07 Feb 2018 17:42:33 GMT  
		Size: 8.9 MB (8948972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869139025a436ca79fd06fdf96766d91df2f135f77ea7cbc9ed1001beb851e1e`  
		Last Modified: Wed, 07 Feb 2018 17:42:21 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
