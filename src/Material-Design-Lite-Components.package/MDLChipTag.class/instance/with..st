public
with: aBlock
	self id.	"Do mot remove me. I am here to make sure that the id is set before the chip is rendered."
	super with: aBlock.
	canvas document
		addLoadScript:
			(canvas jQuery ajax
				script: [ :s | s << (((canvas jQuery id: self id) children: '.mdl-chip__icon') parent addClass: #'mdl-chip__with-icon') ])