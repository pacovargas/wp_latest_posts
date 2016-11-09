{if $hay_errores}
    <pre>
        <ol>
            {$errores}
        </ol>
    </pre>
{else}
    <pre>{$posts|@print_r}</pre>
{/if}