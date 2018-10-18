Extension { #name : #MDLAnchorButton }

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> accentColor [
  "With this option the button will have the color of the accent color of the application."

  self class: 'mdl-button--accent'
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> colored [
  "Applies colored display effect (primary or accent color, depending on the type of button)"

  self class: 'mdl-button--colored'
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> fab [
  "This option applies a `fab` effect. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."

  self class: 'mdl-button--fab'
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> for: anId [
  self attributeAt: 'for' put: anId
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> icon [
  "Display a small circular button with an icon inside."

  self class: 'mdl-button--icon'
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> icon: aString [
  "Display a small circular button with an icon inside."

  self
    icon;
    with: [ self canvas mdlIcon: aString ]
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> miniFab [
  "This option applies a `fab` effect with small margins. The button will take a circular shape instead of a square one. It works better with a symbole as content. For example `+`."

  self class: 'mdl-button--mini-fab'
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> primaryColor [
  "With this option the button will have the color of the primary color of the application."

  self class: 'mdl-button--primary'
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> raised [
  "This will apply a `raised` effect to the button. It will add an elevation."

  self class: 'mdl-button--raised'
]

{ #category : #'*material-design-lite-gemstone' }
MDLAnchorButton >> rippleEffect [
  "With this option, when clicked, the button will display a ripple-like effect on the button."

  self class: 'mdl-js-ripple-effect'
]
