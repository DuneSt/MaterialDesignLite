"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMaterialDesignLiteComponentsTests,
	#superclass : #PackageManifest,
	#category : 'Material-Design-Lite-Components-Tests-Manifest'
}

{ #category : #'code-critics' }
ManifestMaterialDesignLiteComponentsTests class >> ruleRBRefersToClassRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#'MDLAbstractBrushTest class' #isAbstract #true)) #'2018-05-17T02:23:38.212953+02:00') #(#(#RGMethodDefinition #(#'MDLCardInnerDivTest class' #isAbstract #true)) #'2018-05-17T16:46:08.979953+02:00') )
]
