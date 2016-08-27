accessing
style
	^super style , '::-webkit-scrollbar { 
		display: none; 
	}
	.mdl-navigation__link.is-active {
		font-weight: 700;
	}
	.screen-content { 
		margin : 32px;
		color: rgba(0,0,0,.54);
	 }
	
	.mdl-layout__drawer { 
		background-color: white
	 }
	
	pre {
		margin-left: -32px;
		margin-right: -32px;
		background-color: #eee;
		color: rgb(0,0,0);
		padding: 20px 10px;
	}
	pre:hover { 
		background-color: rgba(0,0,0,0.1);
	 }
	.centered-content { 
		margin: auto;
		width: intrinsic;           /* Safari/WebKit uses a non-standard name */
		width: -moz-max-content;    /* Firefox/Gecko */
		width: -webkit-max-content; /* Chrome */
	}
	
	
 	.wa-toolbar { 
		display: none;
 	}
	
	.mdl-layout__content { 
		overflow: visible;
	}
	'