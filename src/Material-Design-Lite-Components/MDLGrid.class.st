"
Description
--------------------

I am a brush to create a MDL grid.

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
	#name : #MDLGrid,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLGrid >> initialize [
	super initialize.
	self class: 'mdl-grid'
]

{ #category : #options }
MDLGrid >> noSpacing [
	self class: 'mdl-grid--no-spacing'
]
