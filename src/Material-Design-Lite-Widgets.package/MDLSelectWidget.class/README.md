I am a widget trying to reproduce the behavior of a select input of a form with a WDL compatible design. 

Description
--------------------

I am a widget with a list of possibilities that can select the user. 

I MUST be used inside a form and I will execute a callback on the submit. 

I have a tricky implementation, for more informations check the implementations detail at the end of the comment. 

Public API and Key Messages
--------------------

There is many constructors in my class side. 

- #defaultSorting 		Use this method to sort the labels using the #<= operator by default
- #beAutoSubmit 		Use this method if you want to form to submit when the user select a value. Do not forget to put your widget in a form.
		
Examples
-------------------		

	MDLSelectWidget new
		possibilities: #(1 2 3 4 5 5);
		labelBlock: [ :number |  number = 5 ifTrue: [ '0' ] ifFalse: [ (number - 1) asString ] ];
		choosingText: 'Select Your Number';
		selectedObject: 3;
		defaultSorting;
		callback: [ :input |  Transcript << input; cr ];
		description: 'description';
		beAutoSubmit;
		yourself.
		
		
	MDLSelectWidget
		possibilities: #(1 2 3 4 5 5)
		inputLabel: 'Select Your Number'
		labelBlock: [ :number |  number = 5 ifTrue: [ '0' ] ifFalse: [ (number - 1) asString ] ]
		callback: [ :input |  Transcript << input; cr ]
		selectedObject: 3
		tooltip: 'description'
		sortBlock: [ :a :b | a > b ]
		
Internal Representation and Key Implementation Points.
-------------------	

    Instance Variables
	autoSubmit:  		<aBoolean>		If true, the form will be submit when the user select a value
	callback:			<aBlock>		A callback to execute on the form submit. It will take as parameter the selected object.
	choosingText:		<aString>		The label of the select input.
	description:			<aString>		An optional tooltip for the input.
	labelBlock:			<aBlock>		A block taking in parameter an object and returning a label to show in the input.
	possibilities:			<aCollection>	The list of possibilities.
	selectedObject:		<anObject>		An optional object to select by default.
	sortBlock:			<aBlock>		An optional block to sort the objects.


Implementation Points
-------------------	

I act as a select by in fact this is just a trick. In reality I am just an text field in read only. The user cannot enter text but he can select an element of a list. The selected element will replace the text in the input. 

To use the callback I keep a temporary dictionary of all the labels and the associated objects. I should ALWAYS have only one object by label. In case the label block return an existing label, I will add a  `(X)` to the label where X is the number of occurences. 