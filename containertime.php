<?php
$containerStartTime = filemtime('/proc/1/cgroup');
$formattedStartTime = date('Y-m-d H:i:s', $containerStartTime);
echo $formattedStartTime;
?>
