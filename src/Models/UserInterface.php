<?php


namespace MYFin\Models;


interface UserInterface
{
    Public function getId():int;
    Public function getFullname():string ;
    Public function getEmail():string ;
    Public function getPasword():string ;
}
