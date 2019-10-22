"
Choose between states.
"
Class {
	#name : #MDLTogglesScreen,
	#superclass : #MDLComponentDemo,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLTogglesScreen class >> icon [
	^ 'comptogglesPng'
]

{ #category : #accessing }
MDLTogglesScreen class >> title [
	^ 'Toggles'
]

{ #category : #sections }
MDLTogglesScreen >> checkbox [
	^ OrderedDictionary new
		add: 'Check on' -> #renderCheckOnOn:;
		add: 'Check off' -> #renderCheckOffOn:;
		yourself
]

{ #category : #sections }
MDLTogglesScreen >> iconToggle [
	^ OrderedDictionary new
		add: 'Icon on' -> #renderIconOnOn:;
		add: 'Icon off' -> #renderIconOffOn:;
		yourself
]

{ #category : #sections }
MDLTogglesScreen >> radioButton [
	^ OrderedDictionary new
		add: 'Radio on' -> #renderRadioOnOn:;
		add: 'Radio off' -> #renderRadioOffOn:;
		add: 'Radio full example' -> #renderRadioFullOn:;
		yourself
]

{ #category : #demos }
MDLTogglesScreen >> renderCheckOffOn: html [
	html mdlCheckboxContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlCheckbox
				value: false;
				id: html lastId.
			html mdlCheckboxLabel: 'Checkbox' ]
]

{ #category : #demos }
MDLTogglesScreen >> renderCheckOnOn: html [
	html mdlCheckboxContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlCheckbox
				value: true;
				id: html lastId.
			html mdlCheckboxLabel: 'Checkbox' ]
]

{ #category : #demos }
MDLTogglesScreen >> renderIconOffOn: html [
	html mdlIconToggleContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlIconToggle id: html lastId.
			html mdlIconToggleLabel: 'format_italic' ]
]

{ #category : #demos }
MDLTogglesScreen >> renderIconOnOn: html [
	html mdlIconToggleContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlIconToggle
				value: true;
				id: html lastId.
			html mdlIconToggleLabel: 'format_bold' ]
]

{ #category : #demos }
MDLTogglesScreen >> renderRadioFullOn: html [
	html div
		style: 'display: inline-block; width: 150px;';
		with: [ html radioGroup
				callback: [ :value | value crLog ];
				selected: true;
				with: [ :group | 
					#(true false)
						do: [ :boolean | 
							html mdlRadioContainer
								for: html nextId;
								rippleEffect;
								with: [ group mdlRadioButton
										id: html lastId;
										value: boolean.
									html mdlRadioLabel: [ 
										html text: boolean asString capitalized , '   ' ] ] ] ] ]
]

{ #category : #demos }
MDLTogglesScreen >> renderRadioOffOn: html [
	html mdlRadioContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlRadioButton
				value: '2';
				attributeAt: 'name' put: 'options';
				id: html lastId.
			html mdlRadioLabel: 'Second' ]
]

{ #category : #demos }
MDLTogglesScreen >> renderRadioOnOn: html [
	html mdlRadioContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlRadioButton
				beChecked;
				value: '1';
				attributeAt: 'name' put: 'options';
				id: html lastId.
			html mdlRadioLabel: 'First' ]
]

{ #category : #rendering }
MDLTogglesScreen >> renderScreenContentOn: html [
	self renderTocOn: html.
	html heading
		level5;
		class: 'section-title';
		id: 'checkbox-toggle';
		with: 'CHECKBOX'.
	self render: self checkbox on: html.
	html heading
		level5;
		class: 'section-title';
		id: 'radiobutton-toggle';
		with: 'RADIO BUTTON'.
	self render: self radioButton on: html.
	html heading
		level5;
		class: 'section-title';
		id: 'icon-toggle';
		with: 'ICON TOGGLE'.
	self render: self iconToggle on: html.
	html heading
		level5;
		class: 'section-title';
		id: 'switch-toggle';
		with: 'SWITCH TOGGLE'.
	self render: self switch on: html
]

{ #category : #demos }
MDLTogglesScreen >> renderSwitchOffOn: html [
	html mdlSwitchContainer
		rippleEffect;
		style: 'width: 150px;';
		for: html nextId;
		with: [ html mdlSwitch id: html lastId.
			html mdlSwitchLabel: 'On / Off' ]
]

{ #category : #demos }
MDLTogglesScreen >> renderSwitchOnOn: html [
	html mdlSwitchContainer
		rippleEffect;
		style: 'width: 150px;';
		for: html nextId;
		with: [ html mdlSwitch
				value: true;
				id: html lastId.
			html mdlSwitchLabel: 'On / Off' ]
]

{ #category : #accessing }
MDLTogglesScreen >> sections [
	^ OrderedDictionary
		with: '#checkbox-toggle' -> 'Checkbox'
		with: '#radiobutton-toggle' -> 'Radio button'
		with: '#icon-toggle' -> 'Icon toggle'
		with: '#switch-toggle' -> 'Switch'
]

{ #category : #sections }
MDLTogglesScreen >> switch [
	^ OrderedDictionary new
		add: 'Switch on' -> #renderSwitchOnOn:;
		add: 'Switch off' -> #renderSwitchOffOn:;
		yourself
]
