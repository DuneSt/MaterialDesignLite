options - order
desktopOrder: anInteger
	"Reorders cell to position N when in desktop mode. Be careful! This option should not be used to manage the content of your page but only its style depending on the screen kind (desktop/tablet/phone)"

	self class: 'mdl-cell--order-' , anInteger asString , '-desktop'