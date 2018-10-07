Description
--------------------

I am a brush to create a MDL cell. A cell should always be used inside a Grid.

Cells defines some options:
- Possibility to define the size depending on the screen kind (desktop, tablet, phone)
- Possibility to add an offset depending on the screen kind
- Possibility to reorder the cells depending on the screen kind
- Possibility to vertically align the cell at the top, middle or bottom (or stretch it)
- Hide the cell on some screen kinds

Example
--------------------

	html
		mdlGrid: [ 1 to: 12 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 1;
					with: 1 ].
			1 to: 3 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 4;
					with: 4 ].
			#(6 4 2)
				do: [ :int | 
					html mdlCell
						class: 'grid-cell-demo';
						size: int;
						with: int ].
			html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				tabletSize: 8;
				with: '6 (8 tablet)'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 4;
				tabletSize: 6;
				with: '4 (6 tablet)'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 2;
				phoneSize: 4;
				with: '2 (4 phone)' ]