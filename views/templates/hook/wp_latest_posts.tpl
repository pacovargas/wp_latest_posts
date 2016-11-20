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

<div class="wplp_title">
    <h2>{l s='Latest Posts' mod='wplatestposts'}</h2>
</div>

{if $hay_errores}
    <div class="wplp_posts_errores">
        <div class="wplp_titulo_errores">
            {l s='There are some errors:' mod='wplatestposts'}
        </div>
        <ol>
            {foreach from=$errores item=error}
                <li>{$error|escape:'htmlall':'UTF-8'}</li>
            {/foreach}
        </ol>
    </div>
{else}
    <div class="wplp_posts_container">
        {$post = 0}
        {$col = 1}
        {$posts_mostrados = 0}
        {while $posts_mostrados < $count_posts}
            <div class="wplp_post {if $col < $posts_por_fila}post-width-padding{/if}" style="width:{$post_width|escape:'htmlall':'UTF-8'}%">
                <a href="{$posts.$post.url|escape:'htmlall':'UTF-8'}">
                    <div class="wplp_post_image"><img src="{$posts.$post.img_url|escape:'htmlall':'UTF-8'}" /></div>
                    <div class="wplp_post_title">{$posts.$post.titulo|escape:'htmlall':'UTF-8'}</div>
                    <div class="wplp_post_text">{$posts.$post.texto|escape:'htmlall':'UTF-8'}</div>
                </a>
                <div class="wplp_link"><a href="{$posts.$post.url|escape:'htmlall':'UTF-8'}">{l s='Read more' mod='wplatestposts'}</a></div>
            </div>
            {$post = $post + 1}
            {if $col == $posts_por_fila}
                {$col = 1}
            {else}
                {$col = $col + 1}
            {/if}
            {$posts_mostrados = $posts_mostrados + 1}
        {/while}
    </div>
{/if}