Class {
	#name : #MDLSwitchWidget,
	#superclass : #MDLWidget,
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #rendering }
MDLSwitchWidget >> renderContentOn: html [
	html div 
		style: 'width: 28px;';
		with: [
			html mdlSwitchContainer for: (self id); with: [ 
				html mdlSwitch id: (self id); value: self value.
				html mdlSwitchLabel  
			]  
		]
]
