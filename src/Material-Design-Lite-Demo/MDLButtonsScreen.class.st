"
Variations on Material Design buttons.
"
Class {
	#name : #MDLButtonsScreen,
	#superclass : #MDLComponentDemo,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLButtonsScreen class >> icon [
	^ 'compbuttonsPng'
]

{ #category : #accessing }
MDLButtonsScreen class >> title [
	^ 'Buttons'
]

{ #category : #sections }
MDLButtonsScreen >> coloredButtons [
	^ OrderedDictionary new
		add: 'Colored button' -> #renderColoredButtonCodeOn:;
		add: 'Accent colored' -> #renderColoredAccentButtonCodeOn:;
		add: 'With Ripples' -> #renderColoredAccentRippleEffectButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLButtonsScreen >> fabButtons [
	^ OrderedDictionary new
		add: 'Plain FAB' -> #renderFabButtonCodeOn:;
		add: 'With ripple' -> #renderFabRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderFabDisabledButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLButtonsScreen >> fabColoredButtons [
	^ OrderedDictionary new
		add: 'Colored FAB' -> #renderColoredFabButtonCodeOn:;
		add: 'With ripple' -> #renderColoredFabRippleEffectButton2CodeOn:;
		yourself
]

{ #category : #sections }
MDLButtonsScreen >> flatButtons [
	^ OrderedDictionary new
		add: 'Flat button' -> #renderFlatButtonCodeOn:;
		add: 'With ripple' -> #renderFlatRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderFlatDisabledButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLButtonsScreen >> iconButtons [
	^ OrderedDictionary new
		add: 'Icon button' -> #renderIconButtonCodeOn:;
		add: 'Colored' -> #renderIconColoredButtonCodeOn:;
		add: 'Label icon' -> #renderLabelIconButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLButtonsScreen >> miniFabButtons [
	^ OrderedDictionary new
		add: 'Mini FAB' -> #renderMiniFabButtonCodeOn:;
		add: 'Colored' -> #renderMiniFabColoredButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLButtonsScreen >> raisedButtons [
	^ OrderedDictionary new
		add: 'Plain raised' -> #renderRaisedButtonCodeOn:;
		add: 'With ripple' -> #renderRaisedRippleEffectButtonCodeOn:;
		add: 'Disabled' -> #renderRaisedDisabledButtonCodeOn:;
		yourself
]

{ #category : #sections }
MDLButtonsScreen >> raisedColoredButtons [
	^ OrderedDictionary new
		add: 'Colored button' -> #renderRaisedColoredButtonCodeOn:;
		add: 'Accent colored' -> #renderRaisedColoredAccentButtonCodeOn:;
		add: 'With Ripples' -> #renderRaisedColoredAccentRippleEffectButtonCodeOn:;
		yourself
]

{ #category : #demos }
MDLButtonsScreen >> renderColoredAccentButtonCodeOn: html [
	html mdlButton
		accentColor;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderColoredAccentRippleEffectButtonCodeOn: html [
	html mdlButton
		accentColor;
		rippleEffect;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderColoredButtonCodeOn: html [
	html mdlButton
		primaryColor;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderColoredFabButtonCodeOn: html [
	html mdlButton
		fab;
		colored;
		with: '+'
]

{ #category : #demos }
MDLButtonsScreen >> renderColoredFabRippleEffectButton2CodeOn: html [
	html mdlButton
		fab;
		colored;
		rippleEffect;
		with: '+'
]

{ #category : #demos }
MDLButtonsScreen >> renderFabButtonCodeOn: html [
	html mdlButton
		fab;
		with: '+'
]

{ #category : #demos }
MDLButtonsScreen >> renderFabDisabledButtonCodeOn: html [
	html mdlButton
		fab;
		disabled;
		with: '+'
]

{ #category : #demos }
MDLButtonsScreen >> renderFabRippleEffectButtonCodeOn: html [
	html mdlButton
		fab;
		rippleEffect;
		with: '+'
]

{ #category : #demos }
MDLButtonsScreen >> renderFlatButtonCodeOn: html [
	html mdlButton: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderFlatDisabledButtonCodeOn: html [
	html mdlButton
		disabled;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderFlatRippleEffectButtonCodeOn: html [
	html mdlButton
		rippleEffect;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderIconButtonCodeOn: html [
	"We could also use the #icon: method"
	html mdlButton
		icon;
		with: [ html mdlIcon: 'mood' ]
]

{ #category : #demos }
MDLButtonsScreen >> renderIconColoredButtonCodeOn: html [
	html mdlButton
		primaryColor;
		icon: 'mood'
]

{ #category : #demos }
MDLButtonsScreen >> renderLabelIconButtonCodeOn: html [
	"We could also use the #labelIcon and provide the icon ourself"

	html mdlButton labelIcon: 'mood'
]

{ #category : #demos }
MDLButtonsScreen >> renderMiniFabButtonCodeOn: html [
	html mdlButton
		fab;
		miniFab;
		with: '+'
]

{ #category : #demos }
MDLButtonsScreen >> renderMiniFabColoredButtonCodeOn: html [
	html mdlButton
		fab;
		colored;
		miniFab;
		with: '+'
]

{ #category : #demos }
MDLButtonsScreen >> renderRaisedButtonCodeOn: html [
	html mdlButton
		raised;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderRaisedColoredAccentButtonCodeOn: html [
	html mdlButton
		raised;
		accentColor;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderRaisedColoredAccentRippleEffectButtonCodeOn: html [
	html mdlButton
		raised;
		accentColor;
		rippleEffect;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderRaisedColoredButtonCodeOn: html [
	html mdlButton
		raised;
		primaryColor;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderRaisedDisabledButtonCodeOn: html [
	html mdlButton
		raised;
		disabled;
		with: 'Button'
]

{ #category : #demos }
MDLButtonsScreen >> renderRaisedRippleEffectButtonCodeOn: html [
	html mdlButton
		raised;
		rippleEffect;
		with: 'Button'
]

{ #category : #rendering }
MDLButtonsScreen >> renderScreenContentOn: html [
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
