sass
calendarSass
	^ '@import "variables"

.mdl-calendar
  padding: 0
  margin: 0
  min-width: 330px

  .mdl-button--icon
    font-size: 14px
    margin: 10px

  .disabled
    color: rgba(0, 0, 0, 0.4)

  .mdl-calendar__title > h3
    margin: 0
    padding: 20px

.mdl-card.mdl-calendar-widget
  margin: auto

  button
    font-size: 14px

  button.disabled
    color: rgba(0, 0, 0, 0.4)

.mdl-cell.year-cell, .mdl-cell.month-cell
  cursor: pointer
  border-radius: 10px
  background-color: rgba(0, 0, 0, 0.2)
  padding: 5px
'