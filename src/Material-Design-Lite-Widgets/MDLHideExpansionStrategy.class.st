"
I am an expansion strategy that uses CSS properties to hide the expansion panel content when it should not be shown.

I also use a little of javascript to update the icon according to the state of the panel.
"
Class {
	#name : #MDLHideExpansionStrategy,
	#superclass : #MDLExpansionStrategy,
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #rendering }
MDLHideExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	anExpansionPanel expandedBlock value: html
]

{ #category : #javascript }
MDLHideExpansionStrategy >> toggleScriptOn: htmlCanvas for: anExpansionPanel [
	^ htmlCanvas jQuery
		script: [ :jsScript |
			jsScript << 'this.parentNode.classList.toggle("isFolded")' js.
			anExpansionPanel expandIcon ~= anExpansionPanel foldIcon
				ifTrue: [
			jsScript << ('if($("#{id}").hasClass("isFolded"))\{
  $("#{id} > .mdl-expansion-panel__header > .mdl-expansion-panel__header-icon").text("{expand_icon}");
\} else \{
  $("#{id} > .mdl-expansion-panel__header > .mdl-expansion-panel__header-icon").text("{fold_icon}");
\}' format: { 'id' -> anExpansionPanel id. 'expand_icon' -> anExpansionPanel expandIcon. 'fold_icon' -> anExpansionPanel foldIcon } asDictionary) js ] ]
]
