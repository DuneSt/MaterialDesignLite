rendering
renderContentOn: html
	self ensureId: html.
	html mdlTextFieldContainer
		class: #'mdl-select';
		id: self id;
		floatingLabel;
		with: [ | fieldId labelMap |
			self
				renderTextFieldFor: (fieldId := html nextId) withMap: (labelMap := self buildLabelMap) on: html;
				renderArrowIconFor: fieldId on: html;
				renderLabelFor: fieldId on: html;
				renderPossibilitiesFor: fieldId withMap: labelMap on: html;
				renderTooltipFor: fieldId on: html.
			labelMap keysAndValuesDo: [ :label :object | self renderMenuTooltipFor: object at: (self idForMenuItemLabelled: label inSelectWith: fieldId) on: html ] ].
	html script: self jsSelectInitialization