sass
sliderSass
	^ '@import "variables"

.mdl-slider-container
  +displayFlex
  +align-items(center)
  flex-wrap: wrap
  margin-bottom: 20px

  label
    width: 100%
    text-align: left
    margin-bottom: 20px

  output
    border-bottom: 1px solid rgba(0,0,0,.12)

input[type="range"].mdl-slider-bounds
  &:before
    content: attr(min)
    line-height: 30px

  &:after
    +abs-pos(auto, 5%)
    content: attr(max)
    line-height: 30px

.mdl-slider__container
  +flexGrow
'