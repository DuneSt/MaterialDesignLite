*Material-Design-Lite
badge: value background: aBoolean
	self class: 'mdl-badge'.
	self attributes at: 'data-badge' put: value.
	aBoolean ifFalse: [ self class: 'mdl-badge--no-background' ]