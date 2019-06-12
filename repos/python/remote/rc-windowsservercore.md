## `python:rc-windowsservercore`

```console
$ docker pull python@sha256:a81bc70df71d35727886070ff8fb2e205c493239c7a34ae04e5c76e5d994667e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `python:rc-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull python@sha256:dba31010408be2d47123ff4464754e65332e4d3bf360cae2d82fa9202e4205e3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5776438458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efbfb9f8a5e7d1507f370403de78e9ab13ceb60f46c9a8cf1c51b5f76564a596`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 13:54:33 GMT
ENV PYTHON_VERSION=3.8.0b1
# Wed, 12 Jun 2019 13:54:34 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 12 Jun 2019 13:57:16 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:57:18 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 13:59:01 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 13:59:03 GMT
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
	-	`sha256:53aacb341856c34ce417de41c47d73695295ab8996eca656817cd34db42c8634`  
		Last Modified: Wed, 12 Jun 2019 14:43:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d933aa1beca6394df9e0522fc4b881742445f72c1d911cfd25d01036a687df`  
		Last Modified: Wed, 12 Jun 2019 14:43:19 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9a6da1fa2d773555b30f89ddd29577e14c0f8148491cf017618c058b5caf57`  
		Last Modified: Wed, 12 Jun 2019 14:43:45 GMT  
		Size: 56.3 MB (56335734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8682c1f886a647643ebdf6e6c1bb3c6dc75f766fd309c3e20703a8fb9854cdde`  
		Last Modified: Wed, 12 Jun 2019 14:43:19 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfd023f0be5e2421f49d1e12a460e0e47b06ca76d62be2c17643d75853e8f9b`  
		Last Modified: Wed, 12 Jun 2019 14:43:31 GMT  
		Size: 10.1 MB (10122024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5447578cf586d11b16bbab211f487e6359b96aa395a0917138029c844e67c4e6`  
		Last Modified: Wed, 12 Jun 2019 14:43:19 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull python@sha256:28a28560fd0642dc27668e00a068472706a8689dc59f0193de6992135e776737
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2364717646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bf9aa2234a77e9fa16dbaa8d9ddbc2794253d332a8e82e20ae2ee4d6527770`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 13:59:17 GMT
ENV PYTHON_VERSION=3.8.0b1
# Wed, 12 Jun 2019 13:59:18 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 12 Jun 2019 14:01:36 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:01:38 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:02:38 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:02:39 GMT
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
	-	`sha256:ee59832a5d42cb4c9f0e694cc4dc6c4c7fbed10470791cbebde0b9b1858e2001`  
		Last Modified: Wed, 12 Jun 2019 14:44:08 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308ac5777eb046520933285766ee30d8f0307e10040083168b204a12ec2a72e5`  
		Last Modified: Wed, 12 Jun 2019 14:44:05 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7531aef7a2b18dca9df960100f0cf00ecf01af5d84c02725e0a41a2f021b888`  
		Last Modified: Wed, 12 Jun 2019 14:44:30 GMT  
		Size: 51.3 MB (51346177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566f6fd580c253fac49faaacf37283ff4eb708f2c4240d9994233f4e71e57afc`  
		Last Modified: Wed, 12 Jun 2019 14:44:05 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0a50a2b1ba2bc93c98a60ca2eadb9defc9982fa6d1edd290a6a0729368c0c8`  
		Last Modified: Wed, 12 Jun 2019 14:44:15 GMT  
		Size: 5.2 MB (5158933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7875c6fd1124b9908e80f2c509938b027c932613a6691ec37b91bc55f6b2c5d3`  
		Last Modified: Wed, 12 Jun 2019 14:44:05 GMT  
		Size: 1.1 KB (1145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull python@sha256:67ebbdbb1fce9c3e2cd389b533700dce2bdba7d9548a31d01354b1cb57c901ac
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2442165723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96da2134a218a182ba3d210e93316d9eb453906bd309c6ad5425d82b3a0c12a1`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:03:01 GMT
ENV PYTHON_VERSION=3.8.0b1
# Wed, 12 Jun 2019 14:03:02 GMT
ENV PYTHON_RELEASE=3.8.0
# Wed, 12 Jun 2019 14:05:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:05:25 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:06:24 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:06:26 GMT
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
	-	`sha256:0e8bb83dd7ad4a259fa683d1c7efa51a784e6334522ca90468c017c96903e147`  
		Last Modified: Wed, 12 Jun 2019 14:44:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820aa96cf7f1b5ad5da41ca2eb6928c88c3dd15efa4abd5ed724734d5f908b38`  
		Last Modified: Wed, 12 Jun 2019 14:44:50 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cf1b0698a4cb66aa71870a533bc705eff354d6270dab0e555a3d7c0d92703`  
		Last Modified: Wed, 12 Jun 2019 14:45:21 GMT  
		Size: 50.9 MB (50936828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880f64196707a2ee40ab6d76c808f79889224594bacc908023fb69990e1b6f04`  
		Last Modified: Wed, 12 Jun 2019 14:44:51 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2e9ee6913e9a917ecf371acb901f8a6e792850b669e247ae087358af9fa0e0`  
		Last Modified: Wed, 12 Jun 2019 14:45:00 GMT  
		Size: 5.2 MB (5156568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4122c67521e408b842a5ea3ab54a41762855bd976390351fa75616dc310a8f13`  
		Last Modified: Wed, 12 Jun 2019 14:44:50 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
