"
Screen to render MDLTableWidget examples
"
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
	html
		render:
			(MDLTableWidget new
				addNumericColumnNamed: 'Integer' evaluated: [ :x | x ];
				addStringColumnNamed: 'String with commas' evaluated: [ :x | x asStringWithCommas ];
				addStringColumnNamed: 'As words' evaluated: [ :x | x asWords capitalized ];
				addAjaxButtonColumnWithIconName: 'explore'
					onClick: [ :htmlCanvas :x | htmlCanvas javascript alert: 'Explore ' , x asString ]
					tooltip: 'Explore integer related to the row.';
				addButtonColumnWithIconName: 'delete'
					onClick: [ :x | 
					Transcript
						show: x;
						show: ' deleted in callback.';
						cr ]
					tooltip: 'Delete integer in callback.';
				collection: (1000 to: 5000 by: 1000);
				yourself)
]

{ #category : #accessing }
MDLTableWidgetScreen >> table [
	^ OrderedDictionary new
		add: 'Table Widget' -> #renderTableWidgetOn:;
		yourself
]
