labelMap - generation
addLabelMapEntryFor: anElem version: anInteger into: aDictionary
	| label |
	label := self labelFor: anElem version: anInteger.
	aDictionary at: label ifPresent: [ :lab | self addLabelMapEntryFor: anElem version: anInteger + 1 into: aDictionary ] ifAbsent: [ aDictionary at: label put: anElem ].
	self flag: #pharo6.	"at:ifPresent:ifAbsentPut: is only available in Pharo 6 :( Improve this when the minimal Pharo version required will be Pharo 6."
	^ aDictionary