actions
restoreFromSnapshot: anObject
	| oldId |
	oldId := self id.
	super restoreFromSnapshot: anObject.
	self id: oldId