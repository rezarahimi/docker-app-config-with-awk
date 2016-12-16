# docker-app-config-with-awk
This docker is a sample to use replacing environment variables' values in properies/ini files with passing enviroment variables with exact name of keys in properies/ini files for handling long properties/ini file inside the docker.

If you use REMOVE_EMPTY_LINES=true parameter the generated properies/ini file can not contains empty lines.


## To build 
In the root of the checked out project run:
```
 docker build -t rezarahimi/app-config-with-awk .
```

## To run sample
To run the sample:
```
docker run --rm -it \
    -e REMOVE_EMPTY_LINES=true \
    -e system1.subs1.prop1=myvalue1 \
    -e system1.subs1.prop_2=" myvalue2" \
    -e system1.subs1.prop-3="myvalue 3" \
    rezarahimi/app-config-with-awk
```
Result:
```
$ docker run --rm -it \
>     -e REMOVE_EMPTY_LINES=true \
>     -e system1.subs1.prop1=myvalue1 \
>     -e system1.subs1.prop_2=" myvalue2" \
>     -e system1.subs1.prop-3="myvalue 3" \
>     rezarahimi/app-config-with-awk
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Env variables
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
HOSTNAME=b4c25f9a83fa
TERM     xterm
system1.subs1.prop_2      myvalue2
PATH     /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
PWD      /
system1.subs1.prop1      myvalue1
system1.subs1.prop-3     myvalue 3
REMOVE_EMPTY_LINES   true
SHLVL    1
HOME     /root
_    /usr/bin/env
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
End of Env variables
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡



‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Modified ini samples file /sample/application.ini
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
; php settings system1.subs1.prop1 = prop1
[commons]
system1.subs1.prop1 =myvalue1
system1.subs1.a-property = "Test Double Qute!!"
system1.subs1.a-property-2 = 'Test Single Qute!!'
[production]
system1.subs1.prop_2 = myvalue2
system1.subs1.prop-3 =myvalue 3
[testing : production]
system1.subs1.prop_2 = myvalue2
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Diff ini samples file /sample/application.ini
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
2d1
< 
4,6c3
< 
< system1.subs1.prop1 = prop1
< 
---
> system1.subs1.prop1 =myvalue1
9d5
< 
11,13c7,8
< 
< system1.subs1.prop_2 = prop_2
< system1.subs1.prop-3 = prop_2
---
> system1.subs1.prop_2 = myvalue2
> system1.subs1.prop-3 =myvalue 3
15c10
< system1.subs1.prop_2 = prod-test
---
> system1.subs1.prop_2 = myvalue2



‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Modified properties sample file /sample/myapp.properties
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
# java settings system1.subs1.prop1 = prop1
system1.subs1.prop1 =myvalue1
system1.subs1.prop_2 = myvalue2
system1.subs1.prop-3 =myvalue 3
system1.subs1.a-property = "Test Double Qute!!"
system1.subs1.a-property-2 = 'Test Single Qute!!'
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
Diff properties sample file /sample/myapp.properties
‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡‡
2,9c2,4
< 
< system1.subs1.prop1 = prop1
< 
< system1.subs1.prop_2 = prop_2
< 
< system1.subs1.prop-3 = prop-3
< 
< 
---
> system1.subs1.prop1 =myvalue1
> system1.subs1.prop_2 = myvalue2
> system1.subs1.prop-3 =myvalue 3
11d5
< 
```