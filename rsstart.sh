#! /bin/bash

#the path of directory that you save your shadowsocksR  project
shadowsocksPath=/home/CustomSSR/shadowsocks/

#the path of directory that you save your rss_normal.json and rss_18+.json
configPath=/home/ss/


if [ "$#" -eq 0 ]
    then
    echo 'default [Normal Mode]'
    echo 'more detail -h '
    cd $shadowsocksPath && sudo ./local.py -c ${configPath}rss_normal.json -d start

elif [ "$1" = "-n" ]
    then
    cd $shadowsocksPath && sudo ./local.py -c ${configPath}rss_normal.json -d start

elif [ "$1" = "-p" ]
    then
    cd $shadowsocksPath && sudo ./local.py -c ${configPath}rss_18+.json -d start

elif [ "$1" = '-r' ]
    then
    sudo kill -15  `ps -aux|grep rss_|grep Ss|awk '{printf $2}'`
    cd $shadowsocksPath && sudo ./local.py -c ${configPath}rss_18+.json -d start


elif [ "$1" = '-b' ]
    then
    sudo kill -15  `ps -aux|grep rss_|grep Ss|awk '{printf $2}'`
    cd $shadowsocksPath && sudo ./local.py -c ${configPath}rss_normal.json -d start
    
elif [ "$1" = '-s' ]
    then
    echo 'ssR process stop completely'
    sudo kill -15  `ps -aux|grep rss_|grep Ss|awk '{printf $2}'`

elif [ "$1" = '-c' ]

    then
        var=$(ps -aux|grep 'rss_normal.json -d'|grep Ss|awk '{printf $11}')
        jug=$(ps -aux|grep 'rss_18+.json -d'|grep Ss|awk '{printf $11}')
    
    if  [ "${var}" = 'python' ]
    then
        echo 'now is normal mode'

    elif  [ "${jug}" = 'python' ]
    then
        echo 'now is 18+ mode'

    else    
        echo 'you are not start yet'
    fi

elif [ "$1" = '-v' ]
    then
    echo 'normal mode ==>' && cat ${configPath}rss_normal.json|grep '.ipip.pm'
    echo '18+     mode ==>' && cat ${configPath}rss_18+.json|grep '.ipip.pm'
    
elif [ "$1" = "-h" ]
    then
    echo 'Help                     : -h'
    echo 'Normal Mode             : -n'
    echo '18+ Mode                 : -p'
    echo 'Reset to 18+ Mode       : -r'
    echo 'Stop the ssR process   : -s'
    echo 'Back to Normal Mode    : -b'
    echo 'Check Mode              : -c'
    echo 'Servers info            : -v'

else
    echo 'Help                     : -h'
    echo 'Normal Mode             : -n'
    echo '18+ Mode                 : -p'
    echo 'Reset to 18+ Mode     : -r'
    echo 'Back to Normal Mode    : -b'
    echo 'Check Mode              : -c'
    echo 'Servers info            : -v'
fi

