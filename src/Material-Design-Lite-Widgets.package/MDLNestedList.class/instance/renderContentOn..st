rendering
renderContentOn: html
	self ensureId: html.
	html div
		id: (self idFor: #nestedList);
		class: #nestedList;
		class: self listStyle;
		with: [ 
					self displayResearchFieldDiv: html.
					html div
						id: (self idFor: #listContent);
						class: #listContent;
						class: #withSearch if: self displayResearchField;
						with: [ self renderListOn: html ] ]