public
with: aBlock
	self ensureId.
	super with: aBlock.
	canvas document addLoadScript: (canvas jQuery ajax script: [ :s | s << (((canvas jQuery id: self id) children: '.mdl-chip__contact') parent addClass: #'mdl-chip--contact') ])