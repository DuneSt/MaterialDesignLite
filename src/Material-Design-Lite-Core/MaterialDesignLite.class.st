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
	(aBuilder item: #MaterialDesignLite) order: 20
]
