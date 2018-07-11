adding
primaryColorTitle: aString class: anotherString
	| classes |
	classes := String
		streamContents: [ :stream | 
			stream
				nextPutAll: 'mdl-color--primary';
				space;
				nextPutAll: 'mdl-color-text--primary-contrast'.
			anotherString
				ifNotEmpty: [ :string | 
					stream
						space;
						nextPutAll: string ] ].
	self title: aString class: classes