document.addEventListener('DOMContentLoaded', () => {
    var tabla = document.getElementsByClassName('tabla');
    console.log(tabla[0].childNodes[3].children[0].cells);
    var filas = document.getElementById('dataTable')
    console.log(filas.rows.length);
    for (let i=0 ; i < filas.rows.length-1; i++){
        var th = tabla[0].childNodes[3].children[i].cells[1].innerText;
        var clas = tabla[0].childNodes[3].children[i].cells[1].className;
        console.log(clas);
        if(tabla[0].childNodes[3].children[i].cells[1].innerText == "ALTO"){
            tabla[0].childNodes[3].children[i].cells[1].className = "colors text-primary align-middle";
        }else if (tabla[0].childNodes[3].children[i].cells[1].innerText == "MEDIA"){
            tabla[0].childNodes[3].children[i].cells[1].className = "table-warning text-primary align-middle";
        }else if (tabla[0].childNodes[3].children[i].cells[1].innerText == "BAJO"){
            tabla[0].childNodes[3].children[i].cells[1].className = "table-info text-primary align-middle";
        }else if (tabla[0].childNodes[3].children[i].cells[1].innerText == "MUY BAJO"){
             tabla[0].childNodes[3].children[i].cells[1].className = "table-succes text-primary align-middle";
        }else if (tabla[0].childNodes[3].children[i].cells[1].innerText == "N/A"){
            tabla[0].childNodes[3].children[i].cells[1].className = "table-light text-primary align-middle";
        }
    }
});