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

{if $hay_errores}
    <pre>
        <ol>
            {$errores}
        </ol>
    </pre>
{else}
    <div class="wplp_title">
        <h2>{l s='Latest Posts' mod='wp_latest_posts'}</h2>
    </div>
    
    <div class="wplp_posts_container">
        {$post = 0}
        {$col = 1}
        {$posts_mostrados = 0}
        {while $posts_mostrados < $count_posts}
            <div class="wplp_post {if $col < $posts_por_fila}post-width-padding{/if}" style="width:{$post_width}%">
                <a href="{$posts.$post.url}">
                    <div class="wplp_post_image"><img src="{$posts.$post.img_url}" /></div>
                    <div class="wplp_post_title">{$posts.$post.titulo}</div>
                    <div class="wplp_post_text">{$posts.$post.texto}</div>
                </a>
                <div class="wplp_link"><a href="{$posts.$post.url}">{l s='Read more' mod='wp_latest_posts'}</a></div>
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