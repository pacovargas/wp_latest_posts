function validarUrl(url){
    var reg = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \?=.-]*)*\/?$/;
    return reg.test(url);
}

function validarEntero(entero){
    var reg = /^[0-9]+$/;
    return reg.test(entero);
}

$(function(){
    $('#module_form').submit(function(event) {
        var valido = true;
        var errores = "";

        var url = $('#WP_LATEST_POSTS_DB_SERVER').val();
        if (url === ""){
            valido = false;
            errores = errores + "<li>" + msg_host_vacio + "</li>";
        }
        else{
            if(!validarUrl(url)){
                valido = false;
                errores = errores + "<li>" + msg_host_invalido + "</li>";
            }
        }

        var name = $('#WP_LATEST_POSTS_DB_NAME').val();
        if(name === ""){
            valido = false;
            errores = errores + "<li>" + msg_nombre_vacio + "</li>";
        }

        var username = $('#WP_LATEST_POSTS_DB_USERNAME').val();
        if(username === ""){
            valido = false;
            errores = errores + "<li>" + msg_usuario_vacio + "</li>";
        }

        var prefix = $('#WP_LATEST_POSTS_DB_PREFIX').val();
        if(prefix === ""){
            valido = false;
            errores = errores + "<li>" + msg_prefijo_vacio + "</li>";
        }

        var post_per_row = $('#WP_LATEST_POSTS_POSTS_PER_ROW').val();
        if(post_per_row === ""){
            valido = false;
            errores = errores + "<li>" + msg_posts_por_fila_vacio + "</li>";
        }
        else{
            if(!validarEntero(post_per_row)){
                valido = false;
                errores = errores + "<li>" + msg_posts_por_fila_invalido + "</li>";
            }
        }

        var rows_nbr = $('#WP_LATEST_POSTS_ROWS').val();
        if(rows_nbr === ""){
            valido = false;
            errores = errores + "<li>" + msg_filas_vacio + "</li>";
        }
        else{
            if(!validarEntero(rows_nbr)){
                valido = false;
                errores = errores + "<li>" + msg_filas_invalido + "</li>";
            }
        }

        if(!valido){
            event.preventDefault();
            $('#errores-wplp').html('<p>' + titulo_errores + ': </p><ol>' + errores + '</ol>');
            $('html, body').animate({
                scrollTop: 0
            }, 500);
        }
    });
});