rendering
renderInnerWidgetsOn: html
	componentOrBlocks
		do: [ :aComponentOrBlock | 
			aComponentOrBlock isBlock
				ifTrue: [ aComponentOrBlock cull: html ]
				ifFalse: [ html render: aComponentOrBlock ] ]
	"contents do: [ :c | html render: c ]"