<?php

namespace shop;


use shop\postTypes\Movie;
use shop\postTypes\ReviewShop;
use shop\taxonomies\MovieCategory;

class Settings {

    // used by plugins_url
    public static function plugin(){
        return __DIR__;
    }

    public static function pluginPath(){
        return dirname(__DIR__);
    }

    public static function imagesUrl(){
        //return self::pluginPath(). '/images';
        return plugins_url("/images", self::plugin());
    }

    public static function pluginParts(){
        return self::pluginPath() . '/plugin-parts';
    }

    public static function postTypes()
    {
        return [
            new Movie(),
        ];
    }

    public static function taxonomies()
    {
        return [
            new MovieCategory(),
        ];
    }
}