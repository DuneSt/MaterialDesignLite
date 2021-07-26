"
Description
--------------------

The Material Design Lite (MDL) text field component is an enhanced version of the standard HTML <input type=""text""> and <input type=""textarea""> elements. A text field consists of a horizontal line indicating where keyboard input can occur and, typically, text that clearly communicates the intended contents of the text field.

Example
--------------------

	html mdlTextFieldContainer
		expandable;
		style: 'width: 200px;';
		with: [ html mdlButton
				labelIcon;
				for: html nextId;
				with: [ html mdlIcon: 'search' ].
			html
				mdlTextFieldExpandableHolder: [ html mdlTextFieldInput id: html lastId.
					html mdlTextFieldLabel
						for: html lastId;
						with: 'Expandable Input' ] ]
"
Class {
	#name : #MDLTextFieldExpandableHolder,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLTextFieldExpandableHolder >> initialize [
	super initialize.
	self class: 'mdl-textfield__expandable-holder'
]
