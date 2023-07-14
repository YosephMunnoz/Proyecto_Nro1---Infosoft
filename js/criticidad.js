document.addEventListener('DOMContentLoaded', () => {
    var tabla = document.getElementsByClassName('tabla');
    var filas = document.getElementById('dataTable')
    for (let i=0 ; i < filas.rows.length-1; i++){
        if(tabla[0].childNodes[3].children[i].cells[1].innerText == "MUY ALTO"){
            tabla[0].childNodes[3].children[i].cells[1].className = "table-danger text-primary align-middle";
        }else if(tabla[0].childNodes[3].children[i].cells[1].innerText == "ALTO"){
            tabla[0].childNodes[3].children[i].cells[1].className = "colors text-primary align-middle";
        }else if (tabla[0].childNodes[3].children[i].cells[1].innerText == "MEDIA"){
            tabla[0].childNodes[3].children[i].cells[1].className = "table-warning text-primary align-middle";
        }else if (tabla[0].childNodes[3].children[i].cells[1].innerText == "BAJO"){
            tabla[0].childNodes[3].children[i].cells[1].className = "table-info text-primary align-middle";
        }else if (tabla[0].childNodes[3].children[i].cells[1].innerText == "MUY BAJO"){
             tabla[0].childNodes[3].children[i].cells[1].className = "table-success text-primary align-middle";
        }else if (tabla[0].childNodes[3].children[i].cells[1].innerText == "N/A"){
            tabla[0].childNodes[3].children[i].cells[1].className = "table-light text-primary align-middle";
        }
    }

    var border = document.getElementsByClassName('obj');
    var borderer = document.getElementsByClassName('card shadow');
    console.log(borderer);
    if(border[0].innerText == "Servidores Físicos: PRODUCCION" || border[0].innerText == "Servidores Físicos: TESTING" 
    || border[0].innerText == "Servidores Físicos: DESARROLLO" || border[0].innerText == "Servidores Físicos: IMPLEMENTACION" || border[0].innerText == "Servidores Físicos: APAGADO")
    {
        borderer[0].className = "card shadow border-left-success";
    }
    else if(border[0].innerText == "Servidores Virtuales: PRODUCCION" || border[0].innerText == "Servidores Virtuales: TESTING" 
    || border[0].innerText == "Servidores Virtuales: DESARROLLO" || border[0].innerText == "Servidores Virtuales: IMPLEMENTACION" || border[0].innerText == "Servidores Virtuales: APAGADO")
    {
        borderer[0].className = "card shadow border-left-danger";
    }
    else if(border[0].innerText == "Servidores Unix: PRODUCCION" || border[0].innerText == "Servidores Unix: TESTING" 
    || border[0].innerText == "Servidores Unix: DESARROLLO" || border[0].innerText == "Servidores Unix: IMPLEMENTACION" || border[0].innerText == "Servidores Unix: APAGADO")
    {
        borderer[0].className = "card shadow border-left-warning";
    }
    else if(border[0].innerText == "Servidores Windows: PRODUCCION" || border[0].innerText == "Servidores Windows: TESTING" 
    || border[0].innerText == "Servidores Windows: DESARROLLO" || border[0].innerText == "Servidores Windows: IMPLEMENTACION" || border[0].innerText == "Servidores Windows: APAGADO")
    {
        borderer[0].className = "card shadow border-left-primary"
    }

    var critico = document.getElementsByClassName('input_nivel_criticidad');
    var n=0;
    console.log(critico.rows);
    console.log(tabla);
    console.log(filas.rows.length)
    for(n=0; n < filas.rows.length-1; n++)
    {
        
    }

    // var input = document.getElementById('input');
    // for(let i=0; i< input.length; i++){
    //     console.log(input.rows);
    //     if(input[i].value == "MUY ALTO"){
    //         input.className+= "btn btn-danger"
    //     }
    //     else if(input[i].value == "ALTO")
    //     {
    //         input[i].className+= "colors" 
    //     }
    //     else if(input[i].value == "MEDIA")
    //     {
    //         input[i].className+= "btn btn-warning" 
    //     }
    //     else if(input[i].value == "BAJO")
    //     {
    //         input[i].className+= "btn btn-info" 
    //     }
    //     else if(input[i].value == "MUY BAJO")
    //     {
    //         inpinput[i].className+= "btn btn-SUCCESS" 
    //     }
    //     else if(input[i].value == "N/A")
    //     {
    //         input[i].className+= "btn btn-light" 
    //     }
    // }
});