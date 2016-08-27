rendering
initializeTable
	table := MDLSortableTable new
		header:
			{'Class'.
			'Number of methods' asNumericMDLSortableTable.
			'Number of methods on class side' asNumericMDLSortableTable};
		rows:
			(Object allSubclasses
				collect: [ :each | 
					{each name.
					each methods size.
					each class methods size} ]);
		title: 'Object subclasses statistics'