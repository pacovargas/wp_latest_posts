{*
* NOTICE OF LICENSE
*
* This file is licenced under the GNU General Public License v3.0.
* With the purchase or the installation of the software in your application
* you accept the licence agreement.
*
*  @author    Francisco Javier Vargas
*  @copyright 2010-2016 Sauz Web Solutions
*  @license   LICENSE.txt
*}

{addJsDefL name=titulo_errores}{l s='There are errors' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_host_vacio}{l s='Host can´t be empty' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_host_invalido}{l s='Host is not valid' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_nombre_vacio}{l s='Database name can´t be empty' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_usuario_vacio}{l s='Database username can´t be empty' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_prefijo_vacio}{l s='Database prefix can´t be empty' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_posts_por_fila_vacio}{l s='Posts per row can´t be empty' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_posts_por_fila_invalido}{l s='Posts per row must be an integer number' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_filas_vacio}{l s='Posts per row can´t be empty' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_filas_invalido}{l s='Posts per row must be an integer number' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_resumen_vacio}{l s='Excerpt length can´t be empty' js=1 mod='wplatestposts'}{/addJsDefL}
{addJsDefL name=msg_resumen_invalido}{l s='Excerpt length row must be an integer number' js=1 mod='wplatestposts'}{/addJsDefL}


<div id="errores-wplp"></div>

{if $exito_configuracion}
    <div id="exito-wplp">{l s='Configuration successfully saved' mod='wplatestposts'}</div>
{/if}