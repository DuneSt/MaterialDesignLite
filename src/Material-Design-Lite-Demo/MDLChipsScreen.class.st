"
Chips represent complex entities in small blocks, such as a contact.
"
Class {
	#name : #MDLChipsScreen,
	#superclass : #MDLComponentDemo,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLChipsScreen class >> icon [
	^ 'compchipsPng'
]

{ #category : #accessing }
MDLChipsScreen class >> title [
	^ 'Chips'
]

{ #category : #sections }
MDLChipsScreen >> imageChips [
	^ OrderedDictionary new
		add: 'Iconned Chip' -> #renderMdlIconChipOn:;
		add: 'Image Chip' -> #renderImageChipOn:;
		add: 'Contact Chip' -> #renderContactChipOn:;
		add: 'Contact with Color Chip' -> #renderContactColorChipOn:;
		yourself
]

{ #category : #demos }
MDLChipsScreen >> renderAjaxRemovableChipOn: html [
	html mdlChip
		ajaxDeleteCallback: [ 'Component deleted' crLog ] successHook: 'alert("Deleted")'; "successHook is optional."
		with: [ html mdlChipText: 'Example Chip' ]
]

{ #category : #demos }
MDLChipsScreen >> renderContactChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
			html mdlChipContact
				hexColor: '009587';
				with: 'C'.
			html mdlChipText: 'Example Chip' ]
]

{ #category : #demos }
MDLChipsScreen >> renderContactColorChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
			html mdlChipContact
				color: (MDLColor tint: #red code: '200');
				with: 'CF'.
			html mdlChipText: 'Example Chip' ]
]

{ #category : #demos }
MDLChipsScreen >> renderImageChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
			html mdlChipImage
				url: (MDLDemoLibrary urlOf: 'chipImageJpg');
				altText: 'Profile image'.
			html mdlChipText: 'Example Chip' ]
]

{ #category : #demos }
MDLChipsScreen >> renderMdlIconChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
			html mdlIcon
				chipIcon;
				with: #accessibility.
			html mdlChipText: 'Example Chip' ]
]

{ #category : #demos }
MDLChipsScreen >> renderRemovableChipOn: html [
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ html mdlChipText: 'Example Chip' ]
]

{ #category : #rendering }
MDLChipsScreen >> renderScreenContentOn: html [
	self
		render: self simpleChips on: html;
		render: self imageChips on: html
]

{ #category : #demos }
MDLChipsScreen >> renderSimpleChipOn: html [
	html mdlChip: [ html mdlChipText: 'Example Chip' ]
]

{ #category : #sections }
MDLChipsScreen >> simpleChips [
	^ OrderedDictionary new
		add: 'Simple Chip' -> #renderSimpleChipOn:;
		add: 'Deletable Chip' -> #renderRemovableChipOn:;
		add: 'Deletable Ajax Chip' -> #renderAjaxRemovableChipOn:;
		yourself
]
