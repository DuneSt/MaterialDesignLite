javascript
expendableJsScript 
	^ 'function expandCollapse(element) {
			$(element.closest(''li'')).toggleClass(''expanded'');
  			$(element.closest(''li'')).children(''ul'').toggle(''medium'');
			$(element.closest(''li'')).toggleClass(''collapsed'');
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
	   var tmp={};
	   tmp[self.dataset.clickcb]= anElementId;
		post(listContainer.dataset.url,tmp);
	}
	
	function loadBefore(start, end, listContainer){
		load(start, end, listContainer, "last");
	}
	
	function loadAfter(start, end, listContainer){
		load(start, end, listContainer, "first");
	}

	function load(start, end, listContainer, lastOrFirstToDelete){
	   dataObj = { };
	   dataObj[listContainer.dataset.cbid] = start+":"+end;
		$.ajax({
       url : listContainer.dataset.url,
       type : "POST",
		 data : dataObj,
       success : function(html_code, statut){
          console.log(statut,"html_code",html_code);
			var list = $(".expList").append(html_code)[0];           
			while(list.length > listContainer.dataset.listmaxsize){
				childToDelete= $(list.children).lastOrFirstToDelete()[0];
				listContainer.scrollTop = listContainer.scrollTop -childToDelete.height();
				childToDelete.remove();
			}
       },
		error : function(){
			location.reload();
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
	
		$(''.listContainer'').scroll(function(e){
			if(0.1>(e.currentTarget.scrollTop) / e.currentTarget.scrollHeight){
				var tempLastIndex = obtainFirstIndex(e.currentTarget);
				if(tempLastIndex < e.currentTarget.dataset.lastindexasked){ 
					//this test is to avoid asking multiple time to the server
					e.currentTarget.dataset.lastindexasked = tempLastIndex;
					loadBefore(parseInt(e.currentTarget.dataset.lastindexasked)- parseInt(e.currentTarget.dataset.loadingstep)
					    ,parseInt(e.currentTarget.dataset.lastindexasked)-1, e.currentTarget);
				}
			}
			if(0.9<(e.currentTarget.scrollTop +$(e.currentTarget).height()) / e.currentTarget.scrollHeight){
				var tempLastIndex = obtainLastIndex(e.currentTarget);
				if(tempLastIndex > e.currentTarget.dataset.lastindexasked){ 
					//this test is to avoid asking multiple time to the server
					e.currentTarget.dataset.lastindexasked = tempLastIndex;
					loadAfter(parseInt(e.currentTarget.dataset.lastindexasked)+1, parseInt(e.currentTarget.dataset.lastindexasked)+ parseInt(e.currentTarget.dataset.loadingstep)
		                 , e.currentTarget);
				}
			}
			
		});
	}

	function scrollToSelection(){
		try{
			var selection = $(''div.isSelected'')[0].parentNode;
			var children = $(''.expList'')[0].children;
			var dec = 0;
			while($(children).index(selection) == -1) selection = selection.parentNode;
			for(var i=0;i < $(children).index(selection); i++){
				dec += $(children[i]).height();
			}
			$(''.listContainer'')[0].scrollTop = dec;
		} catch(err){
			// no selected element
		}
	}

  window.addEventListener("load", function() {
		scrollToSelection();
		defineExpandable();
  });'