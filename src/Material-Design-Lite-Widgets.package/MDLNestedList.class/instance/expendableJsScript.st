javascript
expendableJsScript
	^ 'function prepareList() {
  $(''.expList'').find(''li:has(ul) .expIcon'')
  	.click( function(event) {
  		if (this == event.target) {
  			$(this.closest(''li'')).toggleClass(''expanded'');
  			$(this).toggleClass(''expandedIcon'');
  			$(this.closest(''li'')).children(''ul'').toggle(''medium'');
  		}
  		return false;
  	});
	
  $(''.expList'').find(''li:has(ul)'')
  	.addClass(''collapsed'')
  	.children(''ul'').hide();
  };
 
  $(document).ready( function() {
      prepareList();
  });'