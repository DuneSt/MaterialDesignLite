code
renderImageCardOn: html
	html mdlCard
		shadow: 2;
		mdlTypographyTextLeft;
		style: 'margin: auto; width: 256px; height: 256px;  background: url(''' , (MDLDemoLibrary urlOf: #imagecardJpg) asString , ''') center / cover';
		with: [ html mdlCardTitle expand.
			html mdlCardActions
				style: 'height: 52px; padding: 16px; background: rgba(0,0,0,0.2)';
				with: [ html span
						mdlTypographyFontBold;
						style: 'color: #fff; font-size: 14px';
						with: 'Image.jpg' ] ]