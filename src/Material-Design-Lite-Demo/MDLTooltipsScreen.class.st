"
I am representing tooltips screen
"
Class {
	#name : #MDLTooltipsScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLTooltipsScreen class >> description [
	^ 'Useful informations on hover.'
]

{ #category : #accessing }
MDLTooltipsScreen class >> icon [
	^ 'comptooltipsPng'
]

{ #category : #accessing }
MDLTooltipsScreen class >> title [
	^ 'Tooltips'
]

{ #category : #sections }
MDLTooltipsScreen >> complexeTooltips [
	^ OrderedDictionary new
		add: 'Rich' -> #renderRichTooltipOn:;
		add: 'Multiple Lines' -> #renderMultilinesTooltipOn:;
		yourself
]

{ #category : #sections }
MDLTooltipsScreen >> positionedTooltips [
	^ OrderedDictionary new
		add: 'Top' -> #renderTopTooltipOn:;
		add: 'Right' -> #renderRightTooltipOn:;
		add: 'Bottom' -> #renderBottomTooltipOn:;
		add: 'Left' -> #renderLeftTooltipOn:;
		yourself
]

{ #category : #demos }
MDLTooltipsScreen >> renderBottomTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		bottom;
		for: html lastId;
		with: 'Print'
]

{ #category : #demos }
MDLTooltipsScreen >> renderLargeTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		large;
		for: html lastId;
		with: 'Print'
]

{ #category : #demos }
MDLTooltipsScreen >> renderLeftTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		left;
		for: html lastId;
		with: 'Print'
]

{ #category : #demos }
MDLTooltipsScreen >> renderMultilinesTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'share'.
	html mdlTooltip
		for: html lastId;
		with: [ html text: 'Share your content'.
			html break.
			html text: 'via social media' ]
]

{ #category : #demos }
MDLTooltipsScreen >> renderRichTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'cloud_upload'.
	html mdlTooltip
		for: html lastId;
		with: [ html text: 'Upload '.
			html strong: 'file.zip' ]
]

{ #category : #demos }
MDLTooltipsScreen >> renderRightTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		right;
		for: html lastId;
		with: 'Print'
]

{ #category : #rendering }
MDLTooltipsScreen >> renderScreenContentOn: html [
	self
		render: self simpleTooltips on: html;
		render: self complexeTooltips on: html;
		render: self positionedTooltips on: html
]

{ #category : #demos }
MDLTooltipsScreen >> renderSimpleTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'add'.
	html mdlTooltip
		for: html lastId;
		with: 'Follow'
]

{ #category : #demos }
MDLTooltipsScreen >> renderTopTooltipOn: html [
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		top;
		for: html lastId;
		with: 'Print'
]

{ #category : #sections }
MDLTooltipsScreen >> simpleTooltips [
	^ OrderedDictionary new
		add: 'Simple' -> #renderSimpleTooltipOn:;
		add: 'Large' -> #renderLargeTooltipOn:;
		yourself
]
