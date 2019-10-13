Class {
	#name : #MDLTableWidgetScreen,
	#superclass : #MDLWidgetDemo,
	#category : #'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLTableWidgetScreen class >> description [
	^ 'A high-level widget to generate table.'
]

{ #category : #accessing }
MDLTableWidgetScreen class >> icon [
	^ #comptablesPng
]

{ #category : #accessing }
MDLTableWidgetScreen class >> title [
	^ 'Table widget'
]

{ #category : #rendering }
MDLTableWidgetScreen >> renderScreenContentOn: html [
	self render: self table on: html
]

{ #category : #accessing }
MDLTableWidgetScreen >> renderTableWidgetOn: html [
	html div
		style: 'width: 800px;';
		with:
			(MDLTableWidget new
				addNumericColumnNamed: 'Integer' evaluated: [ :x | x ];
				addStringColumnNamed: 'String with commas' evaluated: [ :x | x asStringWithCommas ];
				addButtonColumnNamed: 'Action' iconName: 'explore' onClickBlock: [ :htmlCanvas :x |
					htmlCanvas jQuery noop ] tooltip: 'coucou';
				collection: (1000 to: 5000 by: 1000);
				yourself)
]

{ #category : #accessing }
MDLTableWidgetScreen >> table [
	^ OrderedDictionary new
		add: 'Table Widget' -> #renderTableWidgetOn:;
		yourself
]
