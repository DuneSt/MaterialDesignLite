"
A tab widget.
"
Class {
	#name : #MDLTabScreen,
	#superclass : #MDLWidgetDemo,
	#category : #'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLTabScreen class >> icon [
	^ #complayoutPng
]

{ #category : #accessing }
MDLTabScreen class >> title [
	^ 'Tabs'
]

{ #category : #rendering }
MDLTabScreen >> renderScreenContentOn: html [
	self render: self tabs on: html
]

{ #category : #demos }
MDLTabScreen >> renderTabsOn: html [
	html
		render:
			(MDLTabWidget new
				addTabNamed: 'Tab 1' content: 'First tab';
				addTabNamed: 'Tab 2' content: 'Second tab';
				yourself)
]

{ #category : #sections }
MDLTabScreen >> tabs [
	^ OrderedDictionary new
		add: 'Tab Widget' -> #renderTabsOn:;
		yourself
]
