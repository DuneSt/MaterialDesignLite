"
Description
--------------------

I am an empty class to manage infrastructure stuff
"
Class {
	#name : #MaterialDesignLite,
	#superclass : #Object,
	#category : #'Material-Design-Lite-Core'
}

{ #category : #'world-menu' }
MaterialDesignLite class >> mainMenuCommandOn: aBuilder [
	<worldMenu>
	(aBuilder item: #MaterialDesignLite)
		order: 20;
		icon: (self mdlIcon scaledToSize: 16@16)
]

{ #category : #accessing }
MaterialDesignLite class >> mdlIcon [
	^ PNGReadWriter formFromStream: MDLLibrary default logoPng readStream
]
