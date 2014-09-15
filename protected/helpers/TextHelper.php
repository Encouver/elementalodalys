<?php

class TextHelper{
    public static function cleanText($text=""){
        //$text = preg_replace('/[^A-Z0-9]+/i', '-', $text);
        $text = strtolower(trim($text, '-'));

        return $text;
    }
}
?>