code
renderTextOptionsOn: html
	html div
		mdlTypographyTextJustify;
		mdlTypographyBody1;
		with: [ #('left' 'right' 'center' 'justify' 'nowrap' 'lowercase' 'uppercase' 'capitalize')
				do: [ :each | 
					| selector |
					selector := ('mdlTypographyText' , each capitalized) asSymbol.	"For example `#mdlTypographyTextLeft`"
					html div
						perform: selector;
						with: 'This is am example with the text option: ' , each ] ]