options - order
phoneOrder: anInteger
	"Reorders cell to position N when in phone mode. Be careful! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"

	self class: 'mdl-cell--order-' , anInteger asString , '-phone'