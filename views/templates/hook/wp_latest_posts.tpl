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
        {$posts_mostrados = 0}
        {while $posts_mostrados < $count_posts}
            <div class="wplp_post" style="width:{$post_width}%">
                <a href="{$posts.$post.url}">
                    <div class="wplp_post_image"><img src="{$posts.$post.img_url}" /></div>
                    <div class="wplp_post_title">{$posts.$post.titulo}</div>
                    <div class="wplp_post_text">{$posts.$post.texto}</div>
                </a>
                <div class="wplp_link"><a href="{$posts.$post.url}">{l s='Read more' mod='wp_latest_posts'}</a></div>
            </div>
            {$post = $post + 1}
            {$posts_mostrados = $posts_mostrados + 1}
        {/while}
    </div>
{/if}