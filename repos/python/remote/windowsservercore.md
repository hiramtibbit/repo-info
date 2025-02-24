## `python:windowsservercore`

```console
$ docker pull python@sha256:a67f088d303dadd914a8690026930b1f16617288390292e81e8da2b849ab860c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `python:windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull python@sha256:c995d15f04b998851d2daf16f5f83dfd513dfdcd8292510072b9e48d9a42c54f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5769993839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0420f39fe95b6437ecdf047deb75e6db1bd86c7052565e61d3a3f1332c94fe`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:06:45 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 12 Jun 2019 14:06:46 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 12 Jun 2019 14:09:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:09:24 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:11:05 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:11:06 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b1358d40ed75648f30a0fb691398cde975f1526c1e026774e41aba035f543a`  
		Last Modified: Wed, 12 Jun 2019 14:45:44 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c152cba967d91604dc81dc37ba07ddf3324b6132c0218f892f08891dac09d49`  
		Last Modified: Wed, 12 Jun 2019 14:45:41 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d82eebfbd497c064c3a88bb530fee3848fd69af3ed36e9bd4826ad587ea006`  
		Last Modified: Wed, 12 Jun 2019 14:46:06 GMT  
		Size: 49.9 MB (49934355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2866de1f917c4de4313331083a1958abc175bee03b31f3c7cd0e7b93740223b4`  
		Last Modified: Wed, 12 Jun 2019 14:45:41 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c32b633fc7a2edac4a725676789cb4de53e693c2021629a312d0367f5c329af`  
		Last Modified: Wed, 12 Jun 2019 14:45:55 GMT  
		Size: 10.1 MB (10078785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7da370c761f655f284e466ef954b9bc5a689c8d2195d9cf6638fa63d14cfbc`  
		Last Modified: Wed, 12 Jun 2019 14:45:41 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull python@sha256:695078b4e9a9fb7febf5f491dd1dbe4508e9195eb6f212f15087163c92c34516
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2362769296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c134fd5ddab857de0bcc9080632d71f8311ef3427e8a0b39fa8249d0046be3`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:11:15 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 12 Jun 2019 14:11:17 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 12 Jun 2019 14:13:31 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:13:33 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:14:36 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:14:37 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2813922152018e46f5b6e0e79635b7e186ac3f89a6df1c8bb9bb583b369e28c`  
		Last Modified: Wed, 12 Jun 2019 14:46:33 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed111f1c930e0f7fd945c1077ef619bf583be1a183d25c7a48d8f36091f3af35`  
		Last Modified: Wed, 12 Jun 2019 14:46:29 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73947f59420f22d0768167212235a9ef1074e0ef59cf806bc2a080874fcd228`  
		Last Modified: Wed, 12 Jun 2019 14:46:52 GMT  
		Size: 49.4 MB (49433277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d47c0da282d783d2778de8dbb1b4f1f9ce0a92e410a27a47c6d18c388bf818`  
		Last Modified: Wed, 12 Jun 2019 14:46:30 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd58b8b5e13342e349964cfea728f05c123d3fff865ce6ecf9234d353d14e3`  
		Last Modified: Wed, 12 Jun 2019 14:46:39 GMT  
		Size: 5.1 MB (5123475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01eac564564471bc789f74c112e6a30631bc2ca8d6e91c79d5bcde9339eb495`  
		Last Modified: Wed, 12 Jun 2019 14:46:30 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull python@sha256:c6943c46cfcf1795129b7acfaec75840ec4d9f7a598791e270b07c21badff135
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440216208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a423a5db36a909fa52de1e21581765ca7de8687036d412c438904a19d762d9`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:14:46 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 12 Jun 2019 14:14:47 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 12 Jun 2019 14:17:04 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:17:06 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:18:08 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:18:10 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06ab217d6042ce3d3428c3590be1f2cd160976adfb3f4d606439839e9043578`  
		Last Modified: Wed, 12 Jun 2019 14:47:18 GMT  
		Size: 1.1 KB (1146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c5f915a59fee3951cb370f9c8ec7d6f07cecda476786fc8ceafb2e09a295e8`  
		Last Modified: Wed, 12 Jun 2019 14:47:16 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28389c39e4313e8385b5dec7cbf45e334c488b205dfc2fa25f723728d4bdac58`  
		Last Modified: Wed, 12 Jun 2019 14:47:42 GMT  
		Size: 49.0 MB (49025763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6f06578ba1fd19821bb4d8bb4ea70982670ab5a3d601604a870df3c89b426`  
		Last Modified: Wed, 12 Jun 2019 14:47:15 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645543484c2ba8f1598320583133e1de2220d5badb64a41fa1e695f1509f44c1`  
		Last Modified: Wed, 12 Jun 2019 14:47:25 GMT  
		Size: 5.1 MB (5118130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b68d35c0ace029f1585ef85594e3046a1ade764ac206253af8dd402548bb27`  
		Last Modified: Wed, 12 Jun 2019 14:47:16 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
