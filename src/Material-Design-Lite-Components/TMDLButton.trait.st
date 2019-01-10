"
Description
--------------------

I am a Trait defining the possible options for Material Design button like brushes.
"
Trait {
	#name : #TMDLButton,
	#category : #'Material-Design-Lite-Components-Buttons'
}

{ #category : #options }
TMDLButton >> accentColor [
	"With this option the button will have the color of the accent color of the application."
	
	self class: 'mdl-button--accent'
]

{ #category : #options }
TMDLButton >> colored [
	"Applies colored display effect (primary or accent color, depending on the type of button)"
	
	self class: 'mdl-button--colored'
]

{ #category : #options }
TMDLButton >> fab [
	"This option applies a `fab` effect. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."
	
	self class: 'mdl-button--fab'
]

{ #category : #attributes }
TMDLButton >> for: anId [
	self attributeAt: 'for' put: anId
]

{ #category : #options }
TMDLButton >> icon [
	"Display a small circular button with an icon inside."
	
	self class: 'mdl-button--icon'
]

{ #category : #options }
TMDLButton >> icon: aString [
	"Display a small circular button with an icon inside."
	
	self
		icon;
		with: [ self canvas mdlIcon: aString ]
]

{ #category : #options }
TMDLButton >> miniFab [
	"This option applies a `fab` effect with small margins. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."
	
	self class: 'mdl-button--mini-fab'
]

{ #category : #options }
TMDLButton >> primaryColor [
	"With this option the button will have the color of the primary color of the application."
	
	self class: 'mdl-button--primary'
]

{ #category : #options }
TMDLButton >> raised [
	"This will apply a `raised` effect to the button. It will add an elevation."
	
	self class: 'mdl-button--raised'
]

{ #category : #options }
TMDLButton >> rippleEffect [
	"With this option, when clicked, the button will display a ripple-like effect on the button."
	
	self class: 'mdl-js-ripple-effect'
]
