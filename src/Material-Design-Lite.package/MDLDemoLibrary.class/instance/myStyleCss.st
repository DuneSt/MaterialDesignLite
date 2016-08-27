uploaded
myStyleCss
	^ '
.hljs {
  display: block;
  overflow-x: auto;
  padding: 0.5em;
  color: #333;
}

.hljs-comment,
.hljs-quote {
  color: #998;
  font-style: italic;
}

.hljs-keyword,
.hljs-selector-tag,
.hljs-subst {
  color: #00a;
}

.hljs-number,
.hljs-literal,
.hljs-variable,
.hljs-template-variable,
.hljs-tag .hljs-attr {
  color: #800000;
}

.hljs-string,
.hljs-doctag {
  color: #800080;
}

.hljs-title,
.hljs-section,
.hljs-selector-id {
  color: #900;
  font-weight: bold;
}

.hljs-subst {
  font-weight: normal;
}

.hljs-type,
.hljs-class .hljs-title {
  color: #458;
  font-weight: bold;
}

.hljs-tag,
.hljs-name,
.hljs-attribute {
  color: #000080;
  font-weight: normal;
}

.hljs-regexp,
.hljs-link {
  color: #009926;
}

.hljs-symbol,
.hljs-bullet {
  color: #990073;
}

.hljs-built_in,
.hljs-builtin-name {
  color: #0086b3;
}

.hljs-meta {
  color: #999;
  font-weight: bold;
}

.hljs-deletion {
  background: #fdd;
}

.hljs-addition {
  background: #dfd;
}

.hljs-emphasis {
  font-style: italic;
}

.hljs-strong {
  font-weight: bold;
}



	.mdl-navigation__link.is-active {
		font-weight: 700;
	}
	.screen-content { 
		margin : 32px;
		color: rgba(0,0,0,.54);
	 }
	
	.examples { 
		margin-top: 100px;
		text-align: center;
	 }
	
	.mdl-layout__drawer { 
		background-color: white
	 }
	
	.mdl-cell { 
		text-align: center;
	}
	
	pre {
		margin: 0px -32px;
		background-color: #eee;
		color: rgb(0,0,0);
		padding: 5px 20px;
	}
	
	pre:hover { 
		background-color: rgba(0,0,0,0.1);
	 }
	
	.centered-content { 
		margin-left: auto;
		margin-right: auto;
		width: intrinsic;           /* Safari/WebKit uses a non-standard name */
		width: -moz-max-content;    /* Firefox/Gecko */
		width: -webkit-max-content; /* Chrome */
	}
	
	.mdl-layout__content { 
		overflow: visible;
	}
	
	.grid-cell-demo { 
		min-height: 100px; 
		background-color: #bdbdbd;
		color: #fff;
		padding-left: 8px;
		padding-top: 4px;
		text-align: left; }
		
	.navigation { 
		margin: 75px 0px;
		border-left: solid 3px #C0EbF1;
		padding-left: 20px;
		line-height: 28px;
		list-style-type: none;
		letter-spacing: 0;
	 }
	
	.navigation a { 
		font-weight: 400;
		color: #00BCD4;
		font-size: 16px;
		letter-spacing: 0;
		text-decoration: none;
	 }
	
	.section-title {
		margin-top: 100px; 
		font-size: 16px;
		font-weight: bold;
		color: rgba(0,0,0,0.54);
		letter-spacing: -.02em;
		text-transform: uppercase;
	}

	.menu-container { 
		width: 200px;
	}

	.menu-bar { 
		padding: 16px;
		position: relative;
	}
	
	.menu-background { 
		height: 148px;
		background-color: white;
	}
'