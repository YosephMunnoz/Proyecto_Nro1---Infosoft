function buscar(){
    $("#buscadorPBO").change(function() {
    $("#buscadorPBO option:selected").each(function() {
      const state = {page: "pbo"};
      const title = "pbo";
      const url = "../../Infosoft3/PBO/pbo.php?valor=";
      history.pushState(state, title, url);
      valor = $(this).val();
      $.get("pbo.php", { valor }, function(data) {
        $("#TablaPBO").html(data);
        const state = {page: "index"};
        const title = "index";
        const url = "../../Infosoft3/PBO/index.php?valor="+valor;
        history.pushState(state, title, url);
        location. reload()
        });
      });
    });
  }