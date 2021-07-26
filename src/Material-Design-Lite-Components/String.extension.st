Extension { #name : #String }

{ #category : #'*Material-Design-Lite-Components' }
String >> js [
	^ JSStream on: self
]
