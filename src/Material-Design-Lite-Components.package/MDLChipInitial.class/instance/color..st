accessing
color: aColor
	| hexColor |
	self flag: #clean.	"This is bad. Really really really bad :( but I don't have time :( In Pharo 4 we have Color>>printHTMLString. In Pharo 5 we have Color>>asHexString. When Pharo 4 will not be suported by MDL anymore we can use #asHexString. Or if someone fave the courage we can create a Material-Design-Lite-Pharo4 package that will have #asHexString as a Color extension and load this package only in Pharo 4. "
	hexColor := '000000' copy.
	hexColor at: 1 put: (Character digitValue: ((aColor privateRGB bitShift: -6 - 20) bitAnd: 15)).
	hexColor at: 2 put: (Character digitValue: ((aColor privateRGB bitShift: -2 - 20) bitAnd: 15)).
	hexColor at: 3 put: (Character digitValue: ((aColor privateRGB bitShift: -6 - 10) bitAnd: 15)).
	hexColor at: 4 put: (Character digitValue: ((aColor privateRGB bitShift: -2 - 10) bitAnd: 15)).
	hexColor at: 5 put: (Character digitValue: ((aColor privateRGB bitShift: -6 - 0) bitAnd: 15)).
	hexColor at: 6 put: (Character digitValue: ((aColor privateRGB bitShift: -2 - 0) bitAnd: 15)).
	self hexColor: hexColor