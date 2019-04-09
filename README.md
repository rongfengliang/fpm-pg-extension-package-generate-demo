# use fpm to build rpm && deb pacakge

## how to running

* install fpm

```code
sudo gem install --no-ri --no-rdoc fpm
```

* rpm  pacakge build

```code
fpm  -s dir -t rpm  -n myplgo-extension ./example--0.1.sql=/usr/pgsql-10/share/extension/  ./example.control=/usr/pgsql-10/share/extension/ ./example.so=/usr/pgsql-10/lib/
```

check rpm package contents

```code
rpm2cpio myplgo-extension-1.0-1.x86_64.rpm | cpio -t

./usr/pgsql-10/lib/example.so
./usr/pgsql-10/share/extension/example--0.1.sql
./usr/pgsql-10/share/extension/example.control
```

* deb pacakge build

```code
fpm  -s dir -t deb  -n myplgo-extension ./example--0.1.sql=/usr/pgsql-10/share/extension/  ./example.control=/usr/pgsql-10/share/extension/ ./example.so=/usr/pgsql-10/lib/
```

check deb package contens

```code
dpkg -c myplgo-extension_1.0_amd64.deb

drwxr-xr-x 0/0               0 2019-04-09 13:08 ./
drwxr-xr-x 0/0               0 2019-04-09 13:08 ./usr/
drwxr-xr-x 0/0               0 2019-04-09 13:08 ./usr/pgsql-10/
drwxr-xr-x 0/0               0 2019-04-09 13:08 ./usr/pgsql-10/lib/
-rw-r--r-- 0/0         3316752 2019-04-09 11:39 ./usr/pgsql-10/lib/example.so
drwxr-xr-x 0/0               0 2019-04-09 13:08 ./usr/pgsql-10/share/
drwxr-xr-x 0/0               0 2019-04-09 13:08 ./usr/pgsql-10/share/extension/
-rw-r--r-- 0/0            1005 2019-04-09 11:39 ./usr/pgsql-10/share/extension/example--0.1.sql
-rw-r--r-- 0/0              92 2019-04-09 11:39 ./usr/pgsql-10/share/extension/example.control
drwxr-xr-x 0/0               0 2019-04-09 13:08 ./usr/share/
drwxr-xr-x 0/0               0 2019-04-09 13:08 ./usr/share/doc/
drwxr-xr-x 0/0               0 2019-04-09 13:08 ./usr/share/doc/myplgo-extension/
-rw-r--r-- 0/0             142 2019-04-09 13:08 ./usr/share/doc/myplgo-extension/changelog.gz
```