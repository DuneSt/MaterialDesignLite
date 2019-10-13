"
I am a button performing its action via AJAX which means that my user control what parts of the page need to be refreshed.

My #onClickBlock has two arguments: the html canvas to generate javascript on and the row on which the action should be applied.
"
Class {
	#name : #MDLAjaxButtonColumnDescription,
	#superclass : #MDLButtonColumnDescription,
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #rendering }
MDLAjaxButtonColumnDescription >> render: row on: html [
	| buttonId |
	html mdlTableCell
		with: [
			html mdlButton
				class: 'mdl-table-widget__cell--button';
				id: (buttonId := self generateIdUsing: html);
				onClick: (self onClickBlock value: html value: row);
				labelIcon: self iconName ].
	
	self renderTooltipFor: buttonId on: html
]
