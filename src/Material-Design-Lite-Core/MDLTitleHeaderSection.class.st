"
I'm a custom header section used to display the title of the displayed screen in the header.
"
Class {
	#name : #MDLTitleHeaderSection,
	#superclass : #MDLAbstractHeaderSection,
	#instVars : [
		'app',
		'tabs',
		'activeTab'
	],
	#category : 'Material-Design-Lite-Core'
}

{ #category : #accessing }
MDLTitleHeaderSection >> activeTab: key [
	activeTab := key
]

{ #category : #accessing }
MDLTitleHeaderSection >> app [
	^ app
]

{ #category : #accessing }
MDLTitleHeaderSection >> app: anObject [
	app := anObject
]

{ #category : #initialization }
MDLTitleHeaderSection >> initialize [
	super initialize.
	tabs := OrderedDictionary new.
]

{ #category : #rendering }
MDLTitleHeaderSection >> renderContentOn: html [
	(html brush: brush)
		waterfall;
		with: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: self app activeScreen title ].
			html
				mdlLayoutTabBar: [ html mdlLayoutSpacer.
					tabs
						keysAndValuesDo: [ :aLabel :aCallback | 
							html mdlLayoutTab
								callback: aCallback;
								isActiveIf: aLabel = activeTab;
								with: aLabel ].
					html mdlLayoutSpacer ] ]
]

{ #category : #accessing }
MDLTitleHeaderSection >> tabs: tabsCollection [
	tabs addAll: tabsCollection
]
