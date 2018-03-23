rendering
renderScreenContentOn: html
	self
		render: self simpleList on: html;
		render: self iconsList on: html;
		render: self avatarActionsList on: html;
		render: self avatarControlsList on: html;
		render: self twoLineList on: html;
		render: self threeLineList on: html