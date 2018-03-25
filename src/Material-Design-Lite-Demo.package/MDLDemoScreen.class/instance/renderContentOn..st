rendering
renderContentOn: html
	html mdlGrid
		class: #'mdl-components__page';
		with: [ html
				mdlCell: [ html div
						class: 'component-title';
						with: [ html heading
								level3;
								with: self title.
							html paragraph: self description ].
					self renderScreenContentOn: html ]
				size: 12 ]