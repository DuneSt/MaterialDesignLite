Extension { #name : #WATagBrush }

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> beCell [
	self class:'mdl-cell'
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> beCell: aSize [
	self class:'mdl-cell mdl-cell--', aSize asString, '-col'
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> beCell: aSize phoneSize: phoneSize [ 
	self class:'mdl-cell mdl-cell--', aSize asString, '-col mdl-cell--', phoneSize asString, '-col-phone' 
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> beCell: aSize phoneSize: phoneSize tabletSize: tabletSize [
	self class:'mdl-cell mdl-cell--', aSize asString, '-col mdl-cell--', phoneSize asString, '-col-phone mdl-cell--', tabletSize asString, '-col-tablet' 
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> beCell: aSize tabletSize: tabletSize [
	self class:'mdl-cell mdl-cell--', aSize asString, '-col mdl-cell--', tabletSize asString, '-col-tablet' 
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> beChipDecoration [
	self class: #'mdl-chip__contact'.
	self script: ((self canvas jQuery this parent: '.mdl-chip') addClass: #'mdl-chip--contact')
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> beGrid [
	self class: 'mdl-grid'
]

{ #category : #'*Material-Design-Lite-Components-Color' }
WATagBrush >> mdlBackgroundColorAccent [
	self class: 'mdl-color--accent'
]

{ #category : #'*Material-Design-Lite-Components-Color' }
WATagBrush >> mdlBackgroundColorPrimary [
	self class: 'mdl-color--primary'
]

{ #category : #'*Material-Design-Lite-Components-Color' }
WATagBrush >> mdlBackgroundColorPrimaryDark [
	self class: 'mdl-color--primary-dark'
]

{ #category : #'*Material-Design-Lite-Components-Color' }
WATagBrush >> mdlTextColorAccent [
	self class: 'mdl-color-text--accent'
]

{ #category : #'*Material-Design-Lite-Components-Color' }
WATagBrush >> mdlTextColorPrimary [
	self class: 'mdl-color-text--primary'
]

{ #category : #'*Material-Design-Lite-Components-Color' }
WATagBrush >> mdlTextColorPrimaryDark [
	self class: 'mdl-color-text--primary-dark'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyBody1 [
	self class: 'mdl-typography--body-1'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyBody1ColorContrast [
	self class: 'mdl-typography--body-1-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyBody1ForcePreferredFont [
	self class: 'mdl-typography--body-1-force-preferred-font'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyBody1ForcePreferredFontColorContrast [
	self class: 'mdl-typography--body-1-force-preferred-font-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyBody2 [
	self class: 'mdl-typography--body-2'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyBody2ColorContrast [
	self class: 'mdl-typography--body-2-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyBody2ForcePreferredFont [
	self class: 'mdl-typography--body-2-force-preferred-font'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyBody2ForcePreferredFontColorContrast [
	self class: 'mdl-typography--body-2-force-preferred-font-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyButton [
	self class: 'mdl-typography--button'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyButtonColorContrast [
	self class: 'mdl-typography--button-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyCaption [
	self class: 'mdl-typography--caption'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyCaptionColorContrast [
	self class: 'mdl-typography--caption-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyCaptionForcePreferredFont [
	self class: 'mdl-typography--caption-force-preferred-font'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyCaptionForcePreferredFontColorContrast [
	self class: 'mdl-typography--caption-force-preferred-font-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyDisplay1 [
	self class: 'mdl-typography--display-1'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyDisplay1ColorContrast [
	self class: 'mdl-typography--display-1-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyDisplay2 [
	self class: 'mdl-typography--display-2'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyDisplay2ColorContrast [
	self class: 'mdl-typography--display-2-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyDisplay3 [
	self class: 'mdl-typography--display-3'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyDisplay3ColorContrast [
	self class: 'mdl-typography--display-3-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyDisplay4 [
	self class: 'mdl-typography--display-4'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyDisplay4ColorContrast [
	self class: 'mdl-typography--display-4-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyFontBlack [
	self class: 'mdl-typography--font-black'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyFontBold [
	self class: 'mdl-typography--font-bold'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyFontLight [
	self class: 'mdl-typography--font-light'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyFontMedium [
	self class: 'mdl-typography--font-medium'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyFontRegular [
	self class: 'mdl-typography--font-regular'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyFontThin [
	self class: 'mdl-typography--font-thin'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyHeadline [
	self class: 'mdl-typography--headline'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyHeadlineColorContrast [
	self class: 'mdl-typography--headline-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyMenu [
	self class: 'mdl-typography--menu'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyMenuColorContrast [
	self class: 'mdl-typography--menu-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographySubhead [
	self class: 'mdl-typography--subhead'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographySubheadColorContrast [
	self class: 'mdl-typography--subhead-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTextCapitalize [
	self class: 'mdl-typography--text-capitalize'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTextCenter [
	self class: 'mdl-typography--text-center'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTextJustify [
	self class: 'mdl-typography--text-justify'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTextLeft [
	self class: 'mdl-typography--text-left'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTextLowercase [
	self class: 'mdl-typography--text-lowercase'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTextNowrap [
	self class: 'mdl-typography--text-nowrap'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTextRight [
	self class: 'mdl-typography--text-right'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTextUppercase [
	self class: 'mdl-typography--text-uppercase'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTitle [
	self class: 'mdl-typography--title'
]

{ #category : #'*Material-Design-Lite-Components-Typography' }
WATagBrush >> mdlTypographyTitleColorContrast [
	self class: 'mdl-typography--title-color-contrast'
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> onChange: aScript if: aCondition [
	aCondition value ifTrue: [ self onChange: aScript ]
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> onClick: aScript if: aCondition [
	aCondition value
		ifTrue: [ self onClick: aScript value ]
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> openDialogWithId: anId [
	"Use me to allow this component to show a modal when we click on it. I should take as parameter the open id of the modal. Check the modal examples for more informations."

	self attributeAt: 'data-opendialog' put: anId
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> openDialogWithId: anId if: aBoolean [
	"Use me to allow this component to show a modal when we click on it. I should take as parameter the open id of the modal. Check the modal examples for more informations."

	aBoolean
		ifTrue: [ self attributeAt: 'data-opendialog' put: anId ]
]

{ #category : #'*Material-Design-Lite-Components' }
WATagBrush >> shadow: aNumber [
	"aNumber must be between 2 and 24"

	self class: 'mdl-shadow--' , aNumber asString , 'dp'
]
