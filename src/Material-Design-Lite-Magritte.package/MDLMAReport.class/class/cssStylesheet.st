css
cssStylesheet
	"There is an anchor inside the table header when the column is sortable, i can't change its style, so here is a css stylesheet that has to be included in your app ..."
	self flag: #itBothersMe.
	^'th a {
		color: rgba(0,0,0,.54);
   		text-decoration: none;
		font-weight: 700;
 	  }'