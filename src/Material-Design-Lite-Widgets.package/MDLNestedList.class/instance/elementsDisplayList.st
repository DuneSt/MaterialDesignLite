accessing
elementsDisplayList
	| start overflow |
	^ self elements size <= self listMaxSize
		ifTrue: [ self elements ]
		ifFalse: [ 
			start := ([ 
			self elements
				indexOf: self selectedEntity
				ifAbsent: [ self elements detectIndex: [ :element | self isIncludingSelectedChildren: element ] ] ]
				on: MessageNotUnderstood
				do: [ 1 ]) - (self listMaxSize / 2) max: 1.
			overflow := 0 max: start + self listMaxSize - self elements size.
			self elements copyFrom: start - overflow to: start + self listMaxSize - 1 - overflow ]