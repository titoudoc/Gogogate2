!/bin/bash
retval=`curl -b gogocookie.txt http://gogogatelocalIP/isg/statusDoor.php?numdoor=1`

if [ "$retval" == "OK" ]
    then
        curl -d 'login=userlogin&pass=userpassword&send-login=submit' -c gogocookie.txt http://gogogatelocalIP/index.php
        curl -b gogocookie.txt http://gogogatelocalIP/isg/opendoor.php?numdoor=1
    else
        echo CLOSED
fi
