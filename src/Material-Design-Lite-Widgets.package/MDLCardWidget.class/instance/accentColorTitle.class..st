adding
accentColorTitle: aString class: anotherString
	| classes |
	classes := String
		streamContents: [ :stream | 
			stream
				nextPutAll: 'mdl-color--accent';
				space;
				nextPutAll: 'mdl-color-text--accent-contrast'.
			anotherString
				ifNotEmpty: [ :string | 
					stream
						space;
						nextPutAll: string ] ].
	self title: aString class: classes