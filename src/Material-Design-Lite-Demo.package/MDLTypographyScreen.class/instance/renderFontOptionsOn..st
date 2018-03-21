code
renderFontOptionsOn: html
	html div
		mdlTypographyTextJustify;
		mdlTypographyBody2;
		with: [ #('thin' 'light' 'regular' 'medium' 'bold' 'black')
				do: [ :each | 
					| selector |
					selector := ('mdlTypographyFont' , each capitalized) asSymbol.	"For example `#mdlTypographyFontThin`"
					html div
						perform: selector;
						with: 'This is am example with the font option: ' , each ] ]