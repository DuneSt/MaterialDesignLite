rendering
renderContentOn: html
	html form: [
		html label: [
			html text: 'Inform Message: '.
		html textInput 
			on: #informMessage of: self ].
		
		html div: [
			self informs do: [ :each |
				html button
					class: 'btn';
					class: each value;
					callback: [ self perform: each key with: [ :r | r strong: 'Message: '; text: self informMessage ] ];
					with: each key ] 
				separatedBy: [ html space ] ].
			
		html break.
		html label: [
			html text: 'Confirm Message: '.
		html textInput 
			on: #confirmMessage of: self ].
			
		html div: [
			self confirms do: [ :each |
				html button
					class: 'btn';
					class: each value;
					callback: [ self perform: each key with: [ :r | r strong: 'Message: '; text: self confirmMessage ] ];
					with: each key ] 
				separatedBy: [ html space ] ].

		html div 
			class: 'form-actions'; 
			with: [
				html button
					class: 'btn';
					callback: [ self answer ];
					with: 'Return' ] ] 