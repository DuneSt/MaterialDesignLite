"
I'm a Screen used in MDLAplication. Inherit from this class to create your own Screens.
Encapsulate them into ScreenDecorators to add behavior to renderContentOn: method. 

For Example, use MDLHeaderScreenDecorator to add a header to your screen automatically. 
Use MDLFooterScreenDecorator to add a footer.
"
Class {
	#name : #MDLScreen,
	#superclass : #WAComponent,
	#category : #'Material-Design-Lite-Core'
}
