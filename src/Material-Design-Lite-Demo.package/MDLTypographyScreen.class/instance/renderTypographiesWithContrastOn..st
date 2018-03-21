code
renderTypographiesWithContrastOn: html
	html div
		mdlTypographyTextJustify;
		with:
				[ #('display-4' 'display-3' 'display-2' 'display-1' 'headline' 'title' 'subhead' 'body-2' 'body-1' 'body-2-Force-Preferred-Font' 'body-1-Force-Preferred-Font' 'caption' 'caption-Force-Preferred-Font' 'menu' 'button')
				do: [ :each | 
					| selector |
					selector := ('mdlTypography' , (each capitalized copyReplaceAll: '-' with: '' ), 'ColorContrast') asSymbol.	"For example `#mdlTypographyCaptionForcePreferredFontColorContrast`"
					html div
						style: 'margin: 10px 0;';
						perform: selector;
						with: each asLowercase capitalized ] ]