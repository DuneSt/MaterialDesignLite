Class {
	#name : #MDLBridge,
	#superclass : #GitBridge,
	#category : #'Material-Design-Lite-Dev-Tools'
}

{ #category : #'class initialization' }
MDLBridge class >> initialize [
	SessionManager default registerSystemClassNamed: self name
]

{ #category : #accessing }
MDLBridge class >> resources [
	^ self root / 'resources'
]
