## `python:windowsservercore-1809`

```console
$ docker pull python@sha256:a23720fe9d650516a9b17eb01bbdd78a28c2c5e8df016b458b8c0a01ca274f51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `python:windowsservercore-1809` - windows version 10.0.17763.557; amd64

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
