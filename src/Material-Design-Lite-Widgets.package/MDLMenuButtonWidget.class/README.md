Description
--------------------

I am a mdl button that expand a menu to choose an item. When an item is selected I will refresh the page.

Examples
--------------------

	 (MDLMenuButtonWidget
		possibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann')
		label: #asString
		action: [ :o | Transcript crShow: o ]
		choosingText: 'Select an user'
		description: 'Choose a user to log into the Transcript')
		sortBlock: [ :a :b | a < b ];
		yourself
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	action:					<aBlock> 		Callback taking the selected element as parameter
	choosingText:			<aString>		The of the button
	description:				<aString>		Tooltip to show on the button
	objectsPossibilities:		<aCollection>	Collection of object to select  from
	selectedObject:			<anObject>		Selected object by default
	sortBlock:				<aBlock>		A block to sort the elements of the menu
	textBlock:				<aBlock>		A block taking a possible object as parameter and returning a string to display on the menu
