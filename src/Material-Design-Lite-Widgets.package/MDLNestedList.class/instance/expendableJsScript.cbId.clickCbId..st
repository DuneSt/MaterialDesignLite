javascript
expendableJsScript: url cbId: cbId clickCbId: clickCb
	^ 'function expandCollapse(element) {
			$(element.closest(''li'')).toggleClass(''expanded'');
  			$(element).toggleClass(''expandedIcon'');
  			$(element.closest(''li'')).children(''ul'').toggle(''medium'');
  	}

  function post(path, parameters) {
    var form = $(''<form></form>'');

    form.attr("method", "post");
    form.attr("action", path);

    $.each(parameters, function(key, value) {
        var field = $(''<input></input>'');

        field.attr("type", "hidden");
        field.attr("name", key);
        field.attr("value", value);

        form.append(field);
    });

    // The form needs to be a part of the document in
    // order for us to be able to submit it.
    $(document.body).append(form);
    form.submit();
	}
	
	function goTo(anElementId){
		post("' , url asString , '",{' , clickCb
		,
			':anElementId});
	}
 
	function loadBefore(start, end){
		$.ajax({
       url : "' , url asString
		,
			'",
       type : ''POST'',
		 data : { ' , cbId asString
		,
			' : start+":"+end },
       success : function(html_code, statut){
			$(''.expList'').prepend(html_code);
			var list = $(''.expList'')[0];           
			for(var i=0;i<' , self listElementsDynamicalLoadingStep asString
		,
			';i++){
				$(''.listContainer'')[0].scrollTop = $(''.listContainer'')[0].scrollTop + $(list.lastChild).height();
				list.removeChild(list.lastChild);
				
			}
       }
    });
	}

	function loadAfter(start, end){
		$.ajax({
       url : "' , url asString
		,
			'",
       type : ''POST'',
		 data : { ' , cbId asString
		,
			' : start+":"+end },
       success : function(html_code, statut){
			$(''.expList'').append(html_code);
			var list = $(''.expList'')[0];           
			for(var i=0;i<' , self listElementsDynamicalLoadingStep asString
		,
			';i++){
				$(''.listContainer'')[0].scrollTop = $(''.listContainer'')[0].scrollTop - $(list.firstChild).height();
				list.removeChild(list.firstChild);
				
			}
       }
    });
	}

	function obtainLastIndex(listContainer){
		var children = listContainer.children[0].children;
		return parseInt(children[children.length - 1].getAttribute("index"));
	}
	
	function obtainFirstIndex(listContainer){
		var children = listContainer.children[0].children;
		return parseInt(children[0].getAttribute("index"));
	}

	function defineExpandable(){
		lastIndexAsked = ' , (self elements indexOf: self selectedEntity ifAbsent: 1) asString
		,
			';
	
		$(''.listContainer'').scroll(function(e){
			if(0.1>(e.currentTarget.scrollTop) / e.currentTarget.scrollHeight){
				var tempLastIndex = obtainFirstIndex(e.currentTarget);
				if(tempLastIndex < lastIndexAsked){ 
					//this test is to avoid asking multiple time to the server
					lastIndexAsked = tempLastIndex;
					loadBefore(lastIndexAsked-' , self listElementsDynamicalLoadingStep asString
		,
			',lastIndexAsked-1);
				}
			}
			if(0.9<(e.currentTarget.scrollTop +$(e.currentTarget).height()) / e.currentTarget.scrollHeight){
				var tempLastIndex = obtainLastIndex(e.currentTarget);
				if(tempLastIndex > lastIndexAsked){ 
					//this test is to avoid asking multiple time to the server
					lastIndexAsked = tempLastIndex;
					loadAfter(lastIndexAsked+1, lastIndexAsked+' , self listElementsDynamicalLoadingStep asString
		,
			');
				}
			}
			
		});
	}

  $(document).ready( function() {
     defineExpandable();
  });'