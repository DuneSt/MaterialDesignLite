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
	
	.centered-content { 
		margin: auto;
		width: fit-content;
	}
	'