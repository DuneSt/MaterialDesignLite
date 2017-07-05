code
renderTextColorOptionsOn: html
	html div
		mdlTypographyTextJustify;
		with:
				[ #('primary' 'primary-Dark' 'accent')
				do: [ :each | 
					| selector |
					selector := ('mdlTextColor' , (each capitalized copyReplaceAll: '-' with: '' )) asSymbol.	"For example `#mdlTextColorPrimaryDark`"
					html div
						style: 'margin: 10px 0;';
						perform: selector;
						with: each asLowercase capitalized ] ]