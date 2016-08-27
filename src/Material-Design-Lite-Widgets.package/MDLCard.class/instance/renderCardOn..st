as yet unclassified
renderCardOn: html
	html mdlCard style: 'margin: auto'; with: [ self renderInnerWidgetsOn: html ]