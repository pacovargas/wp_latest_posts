{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2015 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{addJsDefL name=titulo_errores}{l s='There are errors' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_host_vacio}{l s='Host can´t be empty' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_host_invalido}{l s='Host is not valid' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_nombre_vacio}{l s='Database name can´t be empty' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_usuario_vacio}{l s='Database username can´t be empty' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_prefijo_vacio}{l s='Database prefix can´t be empty' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_posts_por_fila_vacio}{l s='Posts per row can´t be empty' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_posts_por_fila_invalido}{l s='Posts per row must be an integer number' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_filas_vacio}{l s='Posts per row can´t be empty' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_filas_invalido}{l s='Posts per row must be an integer number' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_resumen_vacio}{l s='Excerpt length can´t be empty' js=1 mod='wp_latest_posts'}{/addJsDefL}
{addJsDefL name=msg_resumen_invalido}{l s='Excerpt length row must be an integer number' js=1 mod='wp_latest_posts'}{/addJsDefL}


<div id="errores-wplp"></div>

{if $exito_configuracion}
    <div id="exito-wplp">{l s='Configuration successfully saved' mod='wp_latest_posts'}</div>
{/if}