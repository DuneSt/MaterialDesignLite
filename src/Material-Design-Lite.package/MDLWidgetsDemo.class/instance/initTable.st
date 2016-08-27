rendering
initTable
	table := MDLSortableTable new.
	table header: #('Class' 'Number of Methods' 'Number of Class Methods').
	table rows: (Object allSubclasses collect: [ :each | {each name. each methods size. each class methods size}]).
	table width: '800px'