"
Screen to render MDLPaginationWidget examples
"
Class {
	#name : #MDLPaginationTableScreen,
	#superclass : #MDLWidgetDemo,
	#category : 'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLPaginationTableScreen class >> description [
	^ 'A simple pagination widget.'
]

{ #category : #accessing }
MDLPaginationTableScreen class >> icon [
	^ #comptablesPng
]

{ #category : #accessing }
MDLPaginationTableScreen class >> title [
	^ 'Pagination'
]

{ #category : #'private-accessing' }
MDLPaginationTableScreen >> items [
	^ {(MDLExamplePaginationItem firstName: 'Pepito' lastName: 'Pokitos').
	(MDLExamplePaginationItem firstName: 'Ali' lastName: 'Baba')}
]

{ #category : #sections }
MDLPaginationTableScreen >> pagination [
	^ OrderedDictionary new
		add: 'Pagination Widget' -> #renderPaginationOn:;
		yourself
]

{ #category : #demos }
MDLPaginationTableScreen >> renderPaginationOn: html [
	| items |
	items := {(MDLExamplePaginationItem firstName: 'Pepito' lastName: 'Pokitos'). (MDLExamplePaginationItem firstName: 'Ali' lastName: 'Baba')}.
	html
		render:
			((MDLPaginationWidget newWithItems: items)
				addHeading: 'First name';
				addHeading: 'Last name';
				pageSize: 1;
				yourself)
]

{ #category : #rendering }
MDLPaginationTableScreen >> renderScreenContentOn: html [
	self render: self pagination on: html
]

{ #category : #accessing }
MDLPaginationTableScreen >> warningMessage [
	^ 'This widget will be deleted in the next major release of MDL. You can replace it by the MDLSortableTableWidget.'
]
