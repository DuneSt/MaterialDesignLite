"
I am a simple strategy displaying the full content of the table.

I have not footer to display.
"
Class {
	#name : #MDLDisplayFullTableContent,
	#superclass : #MDLTableContentDisplayStrategy,
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #rendering }
MDLDisplayFullTableContent >> renderContentOn: html [
	html tableBody
		class: 'mdl-table-widget__body';
		with: [ 
		self tableWidget collection do: [ :row | 
			html tableRow: [ 
				self tableWidget columnDescriptions do: [ :columnDescription |
					columnDescription render: row on: html ] ] ] ]
]

{ #category : #rendering }
MDLDisplayFullTableContent >> renderFooterOn: html [
	"Nothing to render here."
]
