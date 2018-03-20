## `python:2-windowsservercore-ltsc2016`

```console
$ docker pull python@sha256:c2123fb8ee96108cf397044d6f880e8b1fc4ee8a07bdbab56f4ac4b4e0269adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `python:2-windowsservercore-ltsc2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull python@sha256:a40936095089d4561c19baa517582f613ed588877badb34cb6d296a2ed50b8d3
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5443952759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791269af480f50ae3dcc61a019eff25e4ededdcd643a4826421a7bb8b9f45df6`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:53:23 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 02:24:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Mar 2018 16:44:07 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 16:44:08 GMT
ENV PYTHON_RELEASE=2.7.14
# Wed, 14 Mar 2018 16:46:32 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Tue, 20 Mar 2018 16:33:57 GMT
ENV PYTHON_PIP_VERSION=9.0.2
# Tue, 20 Mar 2018 16:35:51 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Tue, 20 Mar 2018 16:37:09 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 20 Mar 2018 16:37:10 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:133e38d368dd63f5c9da410ed1656fa9c1f3322a661906f3c2a86b4cd3ff292b`  
		Last Modified: Tue, 13 Mar 2018 00:53:23 GMT  
		Size: 1.3 GB (1319194954 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2b7b9f0500dd2fdcc737e4b1fc4f4a71cddd6f8f02c79660fe8e4d2815db6846`  
		Last Modified: Wed, 14 Mar 2018 16:54:26 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1aa32062472dacf2f4ee44135c4c22a83c9783037ae28c3011ed4c4c4ba592`  
		Last Modified: Wed, 14 Mar 2018 16:57:31 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8614b16b04c8d9691b34543607b5bac5a21595ec56cba0f7a512a907ed96d65`  
		Last Modified: Wed, 14 Mar 2018 16:57:31 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465b9a2330e08d1b7ee30f825ead25abc74fdf921d259721bbde67e8d6f8ddde`  
		Last Modified: Wed, 14 Mar 2018 16:57:51 GMT  
		Size: 38.5 MB (38473152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7a50dac743bf4730fee90d59a83c6e98ee0cad9a7d9f7b84776d374933571d`  
		Last Modified: Tue, 20 Mar 2018 16:42:07 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f53e069bdb37713ce3f935f000f4c79d4a2966f2a863dd3b28f69f0ee1f446a`  
		Last Modified: Tue, 20 Mar 2018 16:42:13 GMT  
		Size: 9.5 MB (9454693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ca9665312c0cdf2c0aa97e7a9eb020f6f22aee762e125483907f078fd44a22`  
		Last Modified: Tue, 20 Mar 2018 16:42:11 GMT  
		Size: 6.8 MB (6838059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efd56f4cc99fdb30bb90f6f361addcc19edc0ad62196aef2af6a3dddd7b7dd3`  
		Last Modified: Tue, 20 Mar 2018 16:42:08 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
