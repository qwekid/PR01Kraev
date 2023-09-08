#!/bin/bash

echo "вариант 1"
echo "задание 1"
echo "Ввести два ненулевых числа. Найти их сумму, разность, произведение и частное."
a=5
b=2
expr $a + $b
expr $a - $b
let "c = $a * $b"
echo $c
c=$(bc<<<"scale=1;$a/$b")
echo $c

echo "задание 2"
echo "Найти периметр и площадь прямоугольной трапеции с основаниями a и b (a > b) и острым углом alpha (угол дан в градусах)."
a=5
b=2
alpha=70

var1=$(bc<<<"scale=3;1/2")
var2=$(bc<<<"scale=1;$a*$a+$b*$b")
var3=$(expr "s($alpha)" | bc -l)
var4=$(expr "c($alpha)" | bc -l)
var5=$(bc<<<"scale=3;var3/var4")
S=$(bc<<<"scale=1;$var1*$var2*$var5")

echo "площадь"
echo $var6
var1=$a-$b
var2=$(bc<<<"scale=3;$var1/$var3")
var5=$(bc<<<"scale=3;$var2*$var4")
p=$(bc<<<"scale=3;$a+$b+$var2+$var3")
echo "периметр"
echo $p

echo "задание 3"
echo "Ввести длину ребра куба. Найти площадь грани, площадь полной поверхности и объем этого куба."
storona=5
SStoron=$(bc<<<"scale=1;$storona*$storona")
SPoln=$(bc<<<"scale=1;$SStoron*6")
V=$(bc<<<"scale=1;$storona*$storona*$storona")
echo $SStoron
echo $SPoln
echo $V
