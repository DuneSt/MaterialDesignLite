public
with: aBlock
	self script: ((canvas jQuery this children: '.mdl-chip__contact') parent addClass: #'mdl-chip--contact').
	super with: aBlock