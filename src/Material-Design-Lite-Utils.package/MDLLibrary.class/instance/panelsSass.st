sass
panelsSass
	^ '@import "variables"

.material-design-left-panel
  position: relative
  min-width: 150px

.resizer
  +box(3px, 100%)
  +abs-pos(auto, -1px, 0)
  z-index: 3
  cursor: ew-resize

.resizer-right
  left: 1px
  right: auto

.vertical-toolbar
  +displayFlex
  +css3(user-select,  none)
  +flexDirection(column)
  position: relative
  margin-top: 25px
  z-index: 2

  .vertical-toolbar__button
    +box(24px, 80px)
    +border-radius(5px 0 0 5px)
    box-shadow: -1px 0 2px 0 rgba(0,0,0,0.14),2px -2px 1px -3px rgba(0,0,0,0.2),-2px 0px 1px 0px rgba(0,0,0,0.12)
    cursor: pointer
    background-color: $white
    margin-top: 20px

    .fold-button
      line-height: 80px

.panel-switcher-button
  +box()
  position: relative
  color: $grey

  .panel-switcher-selected
    color: black

  .panel-switcher-button__content
    +box(80px, 24px)
    +abs-pos(auto, auto, -24px)
    +css3(transform, rotate(-90deg))
    transform-origin: left top 0
    text-align: center

.right-panel
  +box(400px, 100%)
  +transition(all 0.75s)
  background-color: $white
  overflow: auto
  position: relative
'