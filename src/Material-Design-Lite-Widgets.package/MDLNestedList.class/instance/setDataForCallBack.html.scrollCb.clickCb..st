javascript
setDataForCallBack: div html:html scrollCb: scrollCb clickCb:clickCb
	div attributeAt: 'data-url' asSymbol put: html actionUrl asString;
     attributeAt: 'data-cbId' asSymbol put: scrollCb asString; 
     attributeAt: 'data-lclickCb' asSymbol put: clickCb; 
     attributeAt: 'data-listMaxSize' asSymbol put: self listMaxSize asString; 
     attributeAt: 'data-lastIndexAsked' asSymbol put: (self filteredElements indexOf: self selectedEntity ifAbsent: 1) asString;
     attributeAt: 'data-loadingstep' put: self listElementsDynamicalLoadingStep asString