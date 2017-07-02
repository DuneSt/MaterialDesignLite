mdl
iconCss
	^ '@font-face {
  font-family: ''Material Icons'';
  font-style: normal;
  font-weight: 400;
  src: url(/files/MDLLibrary/MaterialIconsRegular.eot);
  src: local(''Material Icons''), 
		 local(''MaterialIcons-Regular''), 
		 url(/files/MDLLibrary/MaterialIconsRegular.woff2) format(''woff2''),
		 url(/files/MDLLibrary/MaterialIconsRegular.woff) format(''woff''),
		 url(/files/MDLLibrary/MaterialIconsRegular.ttf) format(''truetype'');		
}

.material-icons {
  font-family: ''Material Icons'';
  font-weight: normal;
  font-style: normal;
  font-size: 24px;  /* Preferred icon size */
  display: inline-block;
  line-height: 1;
  text-transform: none;
  letter-spacing: normal;
  word-wrap: normal;
  white-space: nowrap;
  direction: ltr;

  /* Support for all WebKit browsers. */
  -webkit-font-smoothing: antialiased;
  /* Support for Safari and Chrome. */
  text-rendering: optimizeLegibility;

  /* Support for Firefox. */
  -moz-osx-font-smoothing: grayscale;

  /* Support for IE. */
  font-feature-settings: ''liga'';
}'