rendering
renderInnerWidgetsOn: html
	contents do: [ :c | html render: c ]