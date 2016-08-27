as yet unclassified
renderImageCardOn: html
	html mdlCard
		shadow: 2;
		class: 'mdl-typography--text-left';
		style: 'margin: auto; width: 256px; height: 256px;  background: url(''',(MDLDemoLibrary urlOf: #imagecardJpg) asString , ''') center / cover';
		with: [ 
			html mdlCardTitle expand.
			html mdlCardActions style: 'height: 52px; padding: 16px; background: rgba(0,0,0,0.2)';with: [ 
				html span style: 'color: #fff; font-weight: bold; font-size: 14px'; with: 'Image.jpg' ] ]