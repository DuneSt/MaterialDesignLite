Sortable table, renders a table and adds the necessary behavior to navigate trough the table

    Instance Variables
	elementsToShow: number of rows that will be rendered
	header: a table with the table headers ( auto conversion from object )
	position:	 the index of the first row to render
	rows: a table with all the rows
	selectable: a boolean saying that the cells can be selected or not
	ajaxOnCompleteHook: a String containing some JS code to be executed after we changed of page. By default it will update the MDL components to initialize the new ones.