as yet unclassified
computeNumbers
	| numbers length |
	numbers := OrderedCollection new.
	1 to: calendar currentDate month start dayOfWeek -1 do: [ :i | numbers add: 0 ].
	1 to: calendar currentDate month daysInMonth do: [ :i | numbers add: i ].
	length := numbers size.
	length to: 42 do: [ :i | numbers add: 0 ].
	^ numbers