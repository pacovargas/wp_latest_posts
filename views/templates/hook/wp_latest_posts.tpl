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
    {$col = 1}
    {$posts_mostrados = 0}
    {while $posts_mostrados < $posts_nbr}
        <pre>{$col}</pre>
        {$col = $col + 1}
        {$posts_mostrados = $posts_mostrados + 1}
    {/while}
    <pre>{$posts_por_fila} - {$filas} - {$post_width}</pre>
{/if}