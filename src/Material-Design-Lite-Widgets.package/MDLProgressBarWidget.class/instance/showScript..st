javascript
showScript: html
	^ (html jQuery id: self id) show , (self progressScript: html)