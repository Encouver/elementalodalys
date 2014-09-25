(function ( $ ) {
$.fn.scrollTo = function( target, options, callback ){
  if(typeof options == 'function' && arguments.length == 2){ callback = options; options = target; }
  var settings = $.extend({
    scrollTarget  : target,
    offsetTop     : 50,
    duration      : 500,
    easing        : 'swing'
  }, options);
  return this.each(function(){
    var scrollPane = $(this);
    var scrollTarget = (typeof settings.scrollTarget == "number") ? settings.scrollTarget : $(settings.scrollTarget);
    var scrollY = (typeof scrollTarget == "number") ? scrollTarget : scrollTarget.offset().top + scrollPane.scrollTop() - parseInt(settings.offsetTop);
    scrollPane.animate({scrollTop : scrollY }, parseInt(settings.duration), settings.easing, function(){
      if (typeof callback == 'function') { callback.call(this); }
    });
  });
}

$.fn.stickySidebar = function( options ) {
 
var config = $.extend({
headerSelector: 'header',
navSelector: 'nav',
contentSelector: '#content',
footerSelector: 'footer',
sidebarTopMargin: 20,
footerThreshold: 40
}, options);
 
var fixSidebr = function() {
 
		var sidebarSelector = $(this);
		var viewportHeight = $(window).height();
		var viewportWidth = $(window).width();
		var documentHeight = $(document).height();
		var headerHeight = $(config.headerSelector).outerHeight();
		var navHeight = $(config.navSelector).outerHeight();
		var sidebarHeight = sidebarSelector.outerHeight();
		var contentHeight = $(config.contentSelector).outerHeight();
		var footerHeight = $(config.footerSelector).outerHeight();
		var scroll_top = $(window).scrollTop();
		var fixPosition = contentHeight - sidebarHeight;
		var breakingPoint1 = headerHeight + navHeight;
		var breakingPoint2 = documentHeight - (sidebarHeight + footerHeight + config.footerThreshold);
 
		// calculate
		if ( (contentHeight > sidebarHeight) && (viewportHeight > sidebarHeight) ) {
		 
				if (scroll_top < breakingPoint1) {
				 
				sidebarSelector.removeClass('sticky');
		 
		} else if ((scroll_top >= breakingPoint1) && (scroll_top < breakingPoint2)) {
		 
				sidebarSelector.addClass('sticky').css('top', config.sidebarTopMargin);
		 
		} else {
		 
		var negative = breakingPoint2 - scroll_top;
		sidebarSelector.addClass('sticky').css('top',negative);
		 
		}
 
	}
};
 
return this.each( function() {
	$(window).on('scroll', $.proxy(fixSidebr, this));
	$(window).on('resize', $.proxy(fixSidebr, this))
	$.proxy(fixSidebr, this)();
});
 
};
 
}( jQuery ));