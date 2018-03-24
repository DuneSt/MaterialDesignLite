demos
renderBackgroundColorOptionsOn: html
	html div
		mdlTypographyTextJustify;
		style: 'color: white; width: 400px;';
		with:
				[ #('primary' 'primary-Dark' 'accent')
				do: [ :each | 
					| selector |
					selector := ('mdlBackgroundColor' , (each capitalized copyReplaceAll: '-' with: '' )) asSymbol.	"For example `#mdlBackgroundColorPrimaryDark`"
					html div
						style: 'margin: 10px 0;';
						perform: selector;
						with: each asLowercase capitalized ] ]