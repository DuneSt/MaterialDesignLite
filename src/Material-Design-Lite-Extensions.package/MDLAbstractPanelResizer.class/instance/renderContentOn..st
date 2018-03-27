rendering
renderContentOn: html
	html div
		class: self panelClass;
		class: #resizer.
	html document addLoadScript: self initMethodName js