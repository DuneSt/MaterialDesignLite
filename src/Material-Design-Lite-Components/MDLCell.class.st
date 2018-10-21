"
Description
--------------------

I am a brush to create a MDL cell. A cell should always be used inside a Grid.

Cells defines some options:
- Possibility to define the size depending on the screen kind (desktop, tablet, phone)
- Possibility to add an offset depending on the screen kind
- Possibility to reorder the cells depending on the screen kind
- Possibility to vertically align the cell at the top, middle or bottom (or stretch it)
- Hide the cell on some screen kinds

Example
--------------------

	html
		mdlGrid: [ 1 to: 12 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 1;
					with: 1 ].
			1 to: 3 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 4;
					with: 4 ].
			#(6 4 2)
				do: [ :int | 
					html mdlCell
						class: 'grid-cell-demo';
						size: int;
						with: int ].
			html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				tabletSize: 8;
				with: '6 (8 tablet)'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 4;
				tabletSize: 6;
				with: '4 (6 tablet)'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 2;
				phoneSize: 4;
				with: '2 (4 phone)' ]
"
Class {
	#name : #MDLCell,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Layout'
}

{ #category : #'options - positionning' }
MDLCell >> bottom [
	"Aligns the cell to the bottom of the parent."
	
	self class: 'mdl-cell--bottom'
]

{ #category : #'options - offsets' }
MDLCell >> desktopOffset: anInteger [
	"Adds N columns of whitespace before the cell in desktop mode."
	
	self class: 'mdl-cell--' , anInteger asString , '-offset-desktop'
]

{ #category : #'options - order' }
MDLCell >> desktopOrder: anInteger [
	"Reorders cell to position N when in desktop mode. Be careful! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"

	self class: 'mdl-cell--order-' , anInteger asString , '-desktop'
]

{ #category : #'options - sizes' }
MDLCell >> desktopSize: aNumber [
	"Sets the column size for the cell to N in desktop mode only"
	
	self class: 'mdl-cell--', aNumber asString, '-col-desktop'
]

{ #category : #'options - hiding' }
MDLCell >> hideDesktop [
	"When this option is enabled, the cell will not appear on desktop mode."
	
	self class: 'mdl-cell--hide-desktop'
]

{ #category : #'options - hiding' }
MDLCell >> hidePhone [
	"When this option is enabled, the cell will not appear on phone mode."
	
	self class: 'mdl-cell--hide-phone'
]

{ #category : #'options - hiding' }
MDLCell >> hideTablet [
	"When this option is enabled, the cell will not appear on tablet mode."
	
	self class: 'mdl-cell--hide-tablet'
]

{ #category : #initialization }
MDLCell >> initialize [
	super initialize.
	self class: 'mdl-cell'
]

{ #category : #'options - positionning' }
MDLCell >> middle [
	"Aligns the cell to the middle of the parent."
	
	self class: 'mdl-cell--middle'
]

{ #category : #'options - offsets' }
MDLCell >> offset: anInteger [
	"Adds N columns of whitespace before the cell."
	
	self class: 'mdl-cell--' , anInteger asString , '-offset'
]

{ #category : #'options - order' }
MDLCell >> order: anInteger [
	"Reorders cell to position N. Be careful! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"

	self class: 'mdl-cell--order-' , anInteger asString
]

{ #category : #'options - offsets' }
MDLCell >> phoneOffset: anInteger [
	"Adds N columns of whitespace before the cell in phone mode."
	
	self class: 'mdl-cell--' , anInteger asString , '-offset-phone'
]

{ #category : #'options - order' }
MDLCell >> phoneOrder: anInteger [
	"Reorders cell to position N when in phone mode. Be careful! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"

	self class: 'mdl-cell--order-' , anInteger asString , '-phone'
]

{ #category : #'options - sizes' }
MDLCell >> phoneSize: aNumber [
	"Sets the column size for the cell to N in phone mode only"
	
	self class: 'mdl-cell--', aNumber asString, '-col-phone'
]

{ #category : #'options - sizes' }
MDLCell >> size: aNumber [
	"Sets the column size for the cell to N for desktop, table and phone"

	self class: 'mdl-cell--', aNumber asString, '-col'
]

{ #category : #'options - positionning' }
MDLCell >> stretch [
	"Stretches the cell vertically to fill the parent. This is the default value."
	
	self class: 'mdl-cell--stretch'
]

{ #category : #'options - offsets' }
MDLCell >> tabletOffset: anInteger [
	"Adds N columns of whitespace before the cell in tablet mode."
	
	self class: 'mdl-cell--' , anInteger asString , '-offset-tablet'
]

{ #category : #'options - order' }
MDLCell >> tabletOrder: anInteger [
	"Reorders cell to position N when in tablet mode. Be careful! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"

	self class: 'mdl-cell--order-' , anInteger asString , '-tablet'
]

{ #category : #'options - sizes' }
MDLCell >> tabletSize: aNumber [
	"tablet 	Sets the column size for the cell to N in tablet mode only"

	self class: 'mdl-cell--', aNumber asString, '-col-tablet'
]

{ #category : #'options - positionning' }
MDLCell >> top [
	"Aligns the cell to the top of the parent."
		
	self class: 'mdl-cell--top'
]
