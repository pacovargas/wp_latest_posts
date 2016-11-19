<?php
/**
* NOTICE OF LICENSE
*
* This file is licenced under the GNU General Public License v3.0.
* With the purchase or the installation of the software in your application
* you accept the licence agreement.
*
*  @author    Francisco Javier Vargas
*  @copyright 2010-2016 Sauz Web Solutions
*  @license   LICENSE.txt
*/

/**
* In some cases you should not drop the tables.
* Maybe the merchant will just try to reset the module
* but does not want to loose all of the data associated to the module.
*/

$sql = array();

foreach ($sql as $query) {
    if (Db::getInstance()->execute($query) == false) {
        return false;
    }
}
