rendering
renderContentOn: html
	iconName ifNotNil: [ html mdlIcon: iconName ] ifNil: [ html text: 'No icon name set' ]