rendering
initializeTable
	table := MDLSortableTable new.
	table header: { 'Class'. 'Number of Methods' asNumericMDLSortableTable. 'Number of Class Methods' asNumericMDLSortableTable}.
	table rows: (Object allSubclasses collect: [ :each | {each name. each methods size. each class methods size}]).
	table width: '800px'