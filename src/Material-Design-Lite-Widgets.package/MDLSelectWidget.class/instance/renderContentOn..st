rendering
renderContentOn: html
	| fieldContainerId |
	html mdlTextFieldContainer
		class: #'mdl-select';
		id: (fieldContainerId := self id ifNil: [ html nextId ]);
		floatingLabel;
		with: [ 
					| fieldId labelMap |
					self
						renderTextFieldFor: (fieldId := html nextId) withMap: (labelMap := self buildLabelMap) on: html;
						renderArrowIconFor: fieldId on: html;
						renderLabelFor: fieldId on: html;
						renderPossibilitiesFor: fieldId withMap: labelMap on: html;
						renderTooltipFor: fieldId on: html.
					labelMap
						keysAndValuesDo: [ :label :object | self renderMenuTooltipFor: object at: (self idForMenuItemLabelled: label inSelectWith: fieldId) on: html ] ].
	html script: (self selectInitJsScriptFor: fieldContainerId)