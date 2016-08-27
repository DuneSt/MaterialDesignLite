running
run
	application := WAAdmin register: MDLRoot asApplicationAt: 'Mdl-example'.
	server := ZnZincServerAdaptor startOn: 8080