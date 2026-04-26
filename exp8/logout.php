<?php
session_start();

session_unset();     // remove variables
session_destroy();   // destroy session

echo "You have been logged out";
echo "<br><a href='login.html'>Login again</a>";
?>