rendering
renderScreenContentOn: html
	self
		render: self nestedList on: html;
		render: self searchableList on: html;
		render: self ajaxActionList on: html;
		render: self iconsList on: html;
		render: self sortedChildrenList on: html