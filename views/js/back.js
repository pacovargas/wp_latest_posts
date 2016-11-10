function validarUrl(url){
    var reg = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \?=.-]*)*\/?$/;
    return reg.test(url);
}

$(function(){
    $('#module_form').submit(function(event) {
        var valido = true;
        var errores = "";

        var url = $('#WP_LATEST_POSTS_DB_SERVER').val();
        if (url === ""){
            valido = false;
            errores = errores + "<li>Host can't be empty</li>";
        }
        else{
            if(!validarUrl(url)){
                valido = false;
                errores = errores + "<li>Host not valid</li>";
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