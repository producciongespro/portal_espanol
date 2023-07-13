
$(document).ready(function(){
  $.getJSON( "obtener_registros.php", function( data ) {
    var items = [];
    $.each( data, function( key, val ) {
      items.push( val );
    });
    cargar_articulos(items);
  });
  var vid = document.getElementById("cancion_inicio");
  window.onblur = function() {
   vid.pause();
}

window.onfocus = function() {
  vid.play();
}

  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip();

  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){

        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})

function cargar_articulos(articulos) {
  // console.log(articulos); 
  var programas=0, sitios=0, antologias=0, cuentos=0, videoconferencias=0, videos=0, documentos=0, textos=0,otros=0;
  for (let index = 0; index < articulos.length; index++) {
    var elemento = $(
      "<div class='col-sm-2'> <a id='' target='_blank' href="+
      articulos[index].url_ref+
      "><img id='' src='"+ articulos[index].url_img +
      "' class='img-circle person' alt='Random Name' width='255' height='255'/> </a><p id='' class='text-center'><strong>"+
      articulos[index].texto+
      "</strong></p><br> </div>"
    );
    switch (articulos[index].seccion) {
      case "programas":
        dibujar("#programas", "programas", programas, elemento);
        programas++;
        break;
      case "sitios":
        dibujar("#sitios", "sitios", sitios, elemento);
        sitios++;
        break;
      case "antologias":
        dibujar("#antologias", "antologias", antologias, elemento);
        antologias++;
        break;
      case "cuentos":
        dibujar("#mi_cuento", "mi_cuento", cuentos, elemento);
        cuentos++;
        break;
        case "videoconferencias":     
        dibujar("#videoconferencias", "videoconferencias", videoconferencias, elemento);
          videoconferencias++;
        break;
      case "videos":
        dibujar("#videos", "videos", videos, elemento);
        videos++;
        break;
        case "documentos":
          dibujar("#documentos", "documentos", documentos, elemento);
          documentos++;
        break;
        case "textos":
          dibujar("#textos", "textos", textos, elemento);
          textos++;
        break;
      case "otros":
        dibujar("#otros", "otros", otros, elemento);
        otros++;
        break;
      default:
        break;
  }
}
}

function dibujar(contenedor, baseDiv, valor, contenido) { 
  if ( (valor==0) || (valor % 6 == 0) ){
    $(contenedor).append("<div class='row tablas' id='"+baseDiv+valor+"' class='row'></div>");
    $(contenedor+valor).append(contenido);
    temp = valor;
  } else{
     $(contenedor+temp).append(contenido);
  }
 }

