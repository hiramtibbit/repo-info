## `python:rc-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:ef6c494194627f6e5852af1bf95ea4ce04bd6409526c7431d07fe0248a33c3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `python:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2007; amd64

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
