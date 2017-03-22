private
addDeleteWithAppendBlock: aBlock
	self class: #'mdl-chip__deletable'.
	self ensureId.
	canvas document addLoadScript: (canvas jQuery ajax script: [ :s | s << (canvas jQuery id: self id) append: aBlock ])