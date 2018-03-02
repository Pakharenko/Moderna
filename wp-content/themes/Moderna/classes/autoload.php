<?php
spl_autoload_register(function($class) {
    if (is_file(TEMPLATEPATH . "/classes/$class.php"))
        require_once TEMPLATEPATH . "/classes/$class.php";
    if (is_file(TEMPLATEPATH . "/widgets/$class.php"))
        require_once TEMPLATEPATH . "/widgets/$class.php";
});