"
Description
--------------------

I'm the screen representing the anchor buttons
"
Class {
	#name : #MDLAnchorButtonsScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #sections }
MDLAnchorButtonsScreen class >> description [
	^ 'Variations on Material Design buttons like anchors.'
]

{ #category : #accessing }
MDLAnchorButtonsScreen class >> icon [
	^ 'compAnchorPng'
]

{ #category : #accessing }
MDLAnchorButtonsScreen class >> title [
	^ 'Anchor buttons'
]

{ #category : #sections }
MDLAnchorButtonsScreen >> coloredButtons [
	^ OrderedDictionary new
		add: 'Colored button' -> #renderColoredButtonCodeOn:;
		add: 'Accent colored' -> #renderColoredAccentButtonCodeOn:;
		add: 'With Ripples' -> #renderColoredAccentRippleEffectButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLAnchorButtonsScreen >> fabButtons [
	^ OrderedDictionary new
		add: 'Plain FAB' -> #renderFabButtonCodeOn:;
		add: 'With ripple' -> #renderFabRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderFabDisabledButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLAnchorButtonsScreen >> fabColoredButtons [
	^ OrderedDictionary new
		add: 'Colored FAB' -> #renderColoredFabButtonCodeOn:;
		add: 'With ripple' -> #renderColoredFabRippleEffectButton2CodeOn:;
		yourself
]

{ #category : #sections }
MDLAnchorButtonsScreen >> flatButtons [
	^ OrderedDictionary new
		add: 'Flat button' -> #renderFlatButtonCodeOn:;
		add: 'With ripple' -> #renderFlatRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderFlatDisabledButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLAnchorButtonsScreen >> iconButtons [
	^ OrderedDictionary new
		add: 'Icon button' -> #renderIconButtonCodeOn:;
		add: 'Colored' -> #renderIconColoredButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLAnchorButtonsScreen >> miniFabButtons [
	^ OrderedDictionary new
		add: 'Mini FAB' -> #renderMiniFabButtonCodeOn:;
		add: 'Colored' -> #renderMiniFabColoredButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLAnchorButtonsScreen >> raisedButtons [
	^ OrderedDictionary new
		add: 'Plain raised' -> #renderRaisedButtonCodeOn:;
		add: 'With ripple' -> #renderRaisedRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderRaisedDisabledButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLAnchorButtonsScreen >> raisedColoredButtons [
	^ OrderedDictionary new
		add: 'Colored button' -> #renderRaisedColoredButtonCodeOn:;
		add: 'Accent colored' -> #renderRaisedColoredAccentButtonCodeOn:;
		add: 'With Ripples' -> #renderRaisedColoredAccentRippleEffectButtonCodeOn:;
		yourself
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderColoredAccentButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		accentColor;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderColoredAccentRippleEffectButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		accentColor;
		rippleEffect;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderColoredButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		primaryColor;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderColoredFabButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		colored;
		with: '+'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderColoredFabRippleEffectButton2CodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		colored;
		rippleEffect;
		with: '+'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderFabButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		with: '+'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderFabDisabledButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		disabled;
		with: '+'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderFabRippleEffectButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		rippleEffect;
		with: '+'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderFlatButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderFlatDisabledButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		disabled;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderFlatRippleEffectButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		rippleEffect;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderIconButtonCodeOn: html [
	"We could also use the #icon: method"
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		icon;
		with: [ html mdlIcon: 'mood' ]
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderIconColoredButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		primaryColor;
		icon: 'mood'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderMiniFabButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		miniFab;
		with: '+'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderMiniFabColoredButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		fab;
		colored;
		miniFab;
		with: '+'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderRaisedButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderRaisedColoredAccentButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		accentColor;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderRaisedColoredAccentRippleEffectButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		accentColor;
		rippleEffect;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderRaisedColoredButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		primaryColor;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderRaisedDisabledButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		disabled;
		with: 'Button'
]

{ #category : #demos }
MDLAnchorButtonsScreen >> renderRaisedRippleEffectButtonCodeOn: html [
	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		rippleEffect;
		with: 'Button'
]

{ #category : #rendering }
MDLAnchorButtonsScreen >> renderScreenContentOn: html [
	self
		render: self fabColoredButtons on: html;
		render: self fabButtons on: html;
		render: self coloredButtons on: html;
		render: self raisedButtons on: html;
		render: self raisedColoredButtons on: html;
		render: self flatButtons on: html;
		render: self iconButtons on: html;
		render: self miniFabButtons on: html
]
