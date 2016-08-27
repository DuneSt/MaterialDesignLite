as yet unclassified
renderGridLayoutOn: html
	html heading level5 class: 'section-title';with: 'GRID'.
	html
		mdlGrid: [ 
			1 to: 12 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 1;
					with: 1 ].
			1 to: 3 do: [ :i | 
				html mdlCell
					class: 'grid-cell-demo';
					size: 4;
					with: 4 ].
			html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				with: 6.
			html mdlCell
				class: 'grid-cell-demo';
				size: 4;
				with: 4.
			html mdlCell
				class: 'grid-cell-demo';
				size: 2;
				with: 2.
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
				with: '2 (4 phone)' ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self gridCode ]