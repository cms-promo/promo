import 'jquery-table-fixed-head'
import '../css/jquery-table-fixed-head.scss'

//document.addEventListener('ready turbolinks:load', () => {
(() => {
  if (document.location.pathname.indexOf("/admin/") === 0) {
    $( "#cms-right" ).remove()
    $( "#cms-main" ).removeClass( "col-lg-8 m-auto" )     // remove all old classes
    $( "#cms-main" ).addClass( "col-lg-10 offset-lg-2" )  // expand width and fix offset
  }
})();
//});
