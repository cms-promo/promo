import 'animate.css'
$.fn.extend({
  animateCss: function ( animationName, callback )
  {
    var animationEnd = "webkitAnimationEnd mozAnimationEnd MSAnimationEnd onanimationend animationend";
    this.addClass( "animated " + animationName ).one( animationEnd, function() {
      $(this).removeClass( "animated " + animationName );
      if (callback) callback();
    });
    return this;
  }
});

import 'aos/dist/aos.css'
import AOS from 'aos'
global.AOS = AOS

/*
//COPY EITHER OF THE FOLLOWING CODE SNIPPETS TO SUPPORT NATIVE OR ANIMATE.CSS ANIMATEION

AOS.init({
  startEvent: 'turbolinks:load',    // name of the event dispatched on the document, that AOS should initialize on
})

------------------------------------------------------------------------------------------------------------------

//FIXME
import 'promo/css/animated-aos.css'
AOS.init({
  // Global settings
  startEvent: 'turbolinks:load',    // name of the event dispatched on the document, that AOS should initialize on
  initClassName: null,              // class applied after initialization
  animatedClassName: 'animated',    // class applied on animation
  useClassNames: true,              // if true, will add content of `data-aos` as classes on scroll
})
*/
