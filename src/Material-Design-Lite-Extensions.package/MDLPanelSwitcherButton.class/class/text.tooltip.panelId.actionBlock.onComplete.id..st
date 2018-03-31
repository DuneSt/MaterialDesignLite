instance creation
text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock onComplete: aJSString id:  anIdBis
	^ self new
		text: aString;
		id: anIdBis;
		tooltip: aTranslatedString;
		panelId: anId;
		actionBlock: aBlock;
		onCompleteJs: aJSString;
		yourself