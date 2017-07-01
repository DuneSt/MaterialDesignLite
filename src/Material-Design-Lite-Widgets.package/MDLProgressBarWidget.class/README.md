Description
--------------------

I am a widget that display a progress bar. This progress bar will be linked to a progression block.

Public API and Key Messages
--------------------

- #hidden 		To hide the progress bar at the page oppening

Examples
--------------------

	
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	hyde:					<aBoolean>		If true, the progress bar will be hidden at the rendering
	progressionBlock:		<BlockClosure>	This must have 0 parameter. It will be evaluated each time to know the progression of the bar. The returned value must be within 0 and 1.
	refreshTime:				<Duration>		The time between two evaluations of the progression block. A short time will refresh the bar more ofter but will require more work from the server
