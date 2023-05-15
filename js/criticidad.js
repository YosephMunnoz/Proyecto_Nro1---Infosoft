document.addEventListener('DOMContentLoaded', () => {
    var filas = document.getElementById('colors');
    for (var i=0; i < filas.length; i++){
        if(filas[i].innerText == "ALTO"){
            filas[i].className = "colors text-primary";
            console.log(filas[i].className);
        }else if (filas[i].innerText == "MEDIA"){
            filas[i].className = "table-warning text-primary";
        }else if (filas[i].innerText == "BAJO"){
            filas[i].className = "table-info text-primary";
        }else if (filas[i].innerText == "MUY BAJO"){
            filas[i].className = "table-succes text-primary";
        }else if (filas[i].innerText == "N/A"){
            filas[i].className = "table-light text-primary";
        }
    }
});