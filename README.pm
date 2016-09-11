Because the default fail2ban status output is mostly useless and hard to read.

Example:

	# fail2ban-status
	
                         ---Failed--- ---Banned---
                            Cur   Tot    Cur   Tot
         nginx-botsearch      0     0      0     0
         nginx-http-auth      0     0      0     0
           php-url-fopen      0     0      0     0
                 postfix      1    88     12    12
            postfix-sasl      0     0      0     0
             selinux-ssh      0     0      0     0
                    sshd      1    26      7     7
    
                    postfix sshd
    101.78.137.254        X      Kwun Tong, Hong Kong
    103.49.174.226        X      Nauru
    104.194.4.151         X      Las Vegas, United States
    112.220.201.150            X Incheon, Korea, Republic of
    114.55.251.208        X      Hangzhou, China
    120.25.73.177         X      Hangzhou, China
    124.232.156.78             X Changsha, China
    146.164.144.232       X      Rio De Janeiro, Brazil
    175.102.6.51               X Shanghai, China
    176.37.246.87              X Kiev, Ukraine - host-176-37-246-87.la.net.ua.
    183.60.122.126             X Guangzhou, China
    190.249.188.184       X      Medell�n, Colombia - cable190-249-188-184.epm.net.co.
    200.35.61.83          X      Medell�n, Colombia
    212.57.16.114         X      Istanbul, Turkey - host-212-57-16-114.reverse.superonline.net.
    218.28.103.233        X      Zhengzhou, China - pc0.zz.ha.cn.
    218.30.57.68          X      China
    88.151.140.22         X      Poznan, Poland - e140-22.icpnet.pl.
    91.224.160.131             X Netherlands
    91.224.160.184             X Netherlands

Installing
----------
Requires Geo::IP.  Try:

	cpan install Geo::IP

And do this monthly:

	curl http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz \
		-o /usr/local/share/GeoIP/GeoIPCountry.dat.gz

	if [ -f /usr/local/share/GeoIP/GeoIPCountry.dat.gz ]; then
		gzip -d /usr/local/share/GeoIP/GeoIPCountry.dat.gz
	fi

	curl http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz \
		-o /usr/local/share/GeoIP/GeoIPCity.dat.gz
	if [ -f /usr/local/share/GeoIP/GeoIPCity.dat.gz ]; then
		gzip -d /usr/local/share/GeoIP/GeoIPCity.dat.gz
	fi

