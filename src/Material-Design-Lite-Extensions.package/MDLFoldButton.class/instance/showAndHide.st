javascript
showAndHide
	^ ('$(".visualization").children().width(0);if(this.dataset.fold=="false"){this.dataset.fold="true";$(this.dataset.for)[0].style.width="0";}else{this.dataset.fold="false";$(this.dataset.for)[0].style.width="";};'
		, self onCompleteScript) js