tests
testBareBrush
	self assert: [ :html | html mdlCardSubtitleText ] generates: '<div class="mdl-card__subtitle-text"></div>'