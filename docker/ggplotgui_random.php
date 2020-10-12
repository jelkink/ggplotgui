<?php

$ips = array(
    "159.203.88.216",
    "165.22.37.217"
);

$ports = range(8080, 8084);

header("Location: http://" . $ips[array_rand($ips)] . ":" . $ports[array_rand($ports)]);

?>
