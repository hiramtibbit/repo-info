## `hylang:0-python3.7-windowsservercore-1809`

```console
$ docker pull hylang@sha256:fe899655da451b8e3a8c26a03db59c64abb72cc6747eac07903e110293141db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `hylang:0-python3.7-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull hylang@sha256:f905891378af2221a060567aa735de11840074770fb05b3090481ea332330421
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2441381331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d1b1f3f9e6304218840ff9724c04beb3c23be35b419a36e45c549a0b241e50`
-	Default Command: `["hy"]`
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
# Wed, 12 Jun 2019 17:26:01 GMT
ENV HY_VERSION=0.17.0
# Wed, 12 Jun 2019 17:26:51 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Wed, 12 Jun 2019 17:26:53 GMT
CMD ["hy"]
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
	-	`sha256:047e5e290d1c6e15bc56fafa4c4cd47002a21e8fc93ef44e8ca080420e128130`  
		Last Modified: Wed, 12 Jun 2019 19:07:51 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feeb94f3b05adb31d03e0867225b34b9a01722c6ef1c24617871acbbe01d7f80`  
		Last Modified: Wed, 12 Jun 2019 19:07:54 GMT  
		Size: 1.2 MB (1162753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44ef822b6f90af2aff84bfd10dfaf30420c8abcf2001bf27e03a1fc0d0779d9`  
		Last Modified: Wed, 12 Jun 2019 19:07:51 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
