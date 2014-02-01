/* global Bootsy */
window.Bootsy = window.Bootsy || {};

Bootsy.init = function() {
  Bootsy.areas = {};

  $('textarea.bootsy_text_area').filter(':visible').each(function(index) {
    var area = new Bootsy.Area($(this));
    var areaIdx = $(this).attr('id') || index;

    if(Bootsy.areas[areaIdx] !== undefined) {
      areaIdx = $(this).attr('id') + index;
    }

    area.init();

    Bootsy.areas[areaIdx] = area;
  });
};

/* Initialize Bootsy on document load */
$(function() {
  Bootsy.init();

  /* Reload Bootsy on page load when using Turbolinks. */
  if (window.Turbolinks) {
    document.addEventListener('page:load', Bootsy.init);
  }
});
