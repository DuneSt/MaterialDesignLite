"
Description
-------------------

A MDL chip represent complex entities in small blocks, such as a contact.

I only implement the closed part and not the open one. This will be implemented later. (If I have time or someone else do it ;) ) .

I can render some text. 
I can be deletable if you give me a block to do delete myself.
I can have a little icon (a MDL icon or an image or an initial).

Public API and Key Messages
-----------------

- #deleteCallback: aBlock							Make the chip deletable.
- #ajaxDeleteCallback: aBlock 						Execute a callback and delete the chip in the page with refresh.
- #ajaxDeleteCallback: aBlock successHook: aString 	Same as before but you can add js on the success of the ajax request.

Examples
------------------

	""A simple Chip""
	html mdlChip: [ html mdlChipText: 'Example Chip' ].
	
	""A Chip with a deleteIcon""
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ html mdlChipText: 'Example Chip' ].
	
	""A Chip with a ajax deleteIcon""
	html mdlChip
		ajaxDeleteCallback: [ 'Component deleted' crLog ] successHook: 'alert(""Deleted"")'; ""successHook is optional.""
		with: [ html mdlChipText: 'Example Chip' ].
	
	""A Chip with a MDLIcon""
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlIcon
						chipIcon;
						with: #accessibility.
					html mdlChipText: 'Example Chip' ].
		
	""A Chip with an image""
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipImage
						url: (MDLDemoLibrary urlOf: 'chipImageJpg');
						altText: 'Profile image'.
					html mdlChipText: 'Example Chip' ].
		
	""A Chip with an initial and an hard coded color""
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipContact
						hexColor: '009587';
						with: 'C'.
					html mdlChipText: 'Example Chip' ].
		
	""A Chip with an initial and a color""
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipContact
						color: (MDLColor tint: #red code: '200');
						with: 'CF'.
					html mdlChipText: 'Example Chip' ]
 

"
Class {
	#name : #MDLChipTag,
	#superclass : #WATagBrush,
	#instVars : [
		'hasContactTag'
	],
	#category : #'Material-Design-Lite-Components-Chips'
}

{ #category : #private }
MDLChipTag >> addDeleteWithAppendBlock: aBlock [
	self class: #'mdl-chip__deletable'.
	self script: (self canvas jQuery this append: aBlock)
]

{ #category : #private }
MDLChipTag >> addDeleteWithAppendBlock: aBlock callback: aNiladicValuable [
	aNiladicValuable argumentCount > 0 ifTrue: [ GRInvalidArgumentCount signal: 'Chip expect a niladic callback.' ].
	
	self addDeleteWithAppendBlock: aBlock
]

{ #category : #'public api' }
MDLChipTag >> ajaxDeleteCallback: aNiladicValuable [
	self ajaxDeleteCallback: aNiladicValuable successHook: ''
]

{ #category : #'public api' }
MDLChipTag >> ajaxDeleteCallback: aNiladicValuable successHook: aString [
	self
		addDeleteWithAppendBlock: [ :html | 
			html span
				onClick:
					(canvas jQuery ajax
						callback: aNiladicValuable;
						context: 'this' js;
						onSuccess: '$(this).parent().remove();' , aString;
						onError: 'location.reload()');
				class: #'mdl-chip__action';
				with: [ html mdlIcon: #cancel ] ]
		callback: aNiladicValuable
]

{ #category : #'public api' }
MDLChipTag >> deleteCallback: aNiladicValuable [
	self
		addDeleteWithAppendBlock: [ :html | 
			html anchor
				callback: aNiladicValuable;
				class: #'mdl-chip__action';
				with: [ html mdlIcon: #cancel ] ]
		callback: aNiladicValuable
]

{ #category : #initialization }
MDLChipTag >> initialize [
	super initialize.
	self class: #'mdl-chip'
]

{ #category : #accessing }
MDLChipTag >> tag [ 
	^ 'span'
]
