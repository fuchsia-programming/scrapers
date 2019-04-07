<?php

    function get_content($URL){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_URL, $URL);
        $data = curl_exec($ch);
        curl_close($ch);
        return $data;
    }

    function get_energy_points($user){
        $url = "https://www.khanacademy.org/profile/$user/";
        $content = get_content($url);
        preg_match('/points":(\\d+),"prefersReducedMotion/', $content, $matches);
        return ($matches[1] ? $matches[1] : 'Not found').PHP_EOL;
    }

    echo get_energy_points('XSLTGod');
