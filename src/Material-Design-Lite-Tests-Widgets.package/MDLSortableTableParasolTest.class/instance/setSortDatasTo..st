initialization
setSortDatasTo: table
	^ table
		header: {'Prenom' . 'Nom'};
		rows:
			{#('Guillaume' 'Larcheveque').
			#('Cyril' 'Ferlicot').
			#('Kévin' 'Lanvin').
			#('Olivier' 'Auverlot').
			#('Thomas' 'Heniart').
			#('Merwan' 'Ouddane')}