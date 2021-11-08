Extension { #name : #SequenceableCollection }

{ #category : #'*Material-Design-Lite-Widgets' }
SequenceableCollection >> groupsOf: n [
	| grouped index |
	grouped := self species new.
	index := 1.
	[ index > self size ]
		whileFalse: [ grouped
				add: (self copyFrom: index to: (index + n - 1 min: self size)) asArray.
			index := index + n ].
	^ grouped
]
