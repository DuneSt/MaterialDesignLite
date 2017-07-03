sass
variablesSass
	^ '// Colors
$red50: #ffebee
$red400: #ef5350
$red: #f44336
$red500: $red
$red700: #d32f2f
$red800: #c62828
$purple: #9C27B0
$purple500: $purple
$purple700: #7B1FA2
$deepPurple: #673AB7
$deepPurple500: $deepPurple
$indigo: #3F51B5
$indigo500: $indigo
$blue: #2196F3
$blue500: $blue
$blue700: #1976D2
$cyan: #00BCD4
$cyan500: $cyan
$cyan700: #0097A7
$teal: #009688
$teal500: $teal
$green: #4CAF50
$green500: $green
$green700: #388E3C
$yellow: #FFEB3B
$yellow500: $yellow
$amber: #FFC107
$amber500: $amber
$orange100: #FFE0B2
$orange200: #FFCC80
$orange300: #FFB74D
$orange400: #FFA726
$orange: #FF9800
$orange500: $orange
$orange600: #FB8C00
$orange700: #F57C00
$deepOrange100: #FFCCBC
$deepOrange200: #FFAB91
$grey100: #F5F5F5
$grey200: #EEEEEE
$grey300: #E0E0E0
$grey400: #BDBDBD
$grey: #9E9E9E
$grey500: $grey
$grey700: #616161
$grey800: #424242
$grey900: #212121
$blueGrey50: #ECEFF1
$blueGrey100: #CFD8DC
$blueGrey200: #B0BEC5
$blueGrey: #607D8B
$blueGrey500: $blueGrey

$white: #FFF
$primary-black-text: rgba(0,0,0,0.87)
$secondary-black-text: rgba(0,0,0,0.54)

$success-shade1: $teal
$danger-shade1: $red
$warning-shade1: $orange
$info-shade1: $blue
$default-shade1: $blueGrey

// Fonts
$mainFonts: "Roboto", "Helvetica", "Arial", sans-serif

// Path

$mdlLibraryURL: ''/files/MDLLibrary/''

// Mixins

=box($width: 100%, $height: $width)
  width: $width
  height: $height

=css3($property, $value)
  @each $prefix in -webkit-, -moz-, -ms-, -o-, ''''
    #{$prefix}#{$property}: $value

=border-radius($radius)  // Always a handy mixin. Set border radius without worrying about all those prefixes.
  +css3(border-radius, $radius)
  background-clip: padding-box  // stops bg color from leaking outside the border

=box-sizing($box-model) // Reset your elements box model with ease.
  +css3(box-sizing, $box-model)

=opacity($opacity) // Set the opacity for all browsers and provide a filter fallback for IE8.
  opacity: $opacity
  $opacity-ie: $opacity * 100
  filter: alpha(opacity=$opacity-ie) //IE8

=transition($options)
  -webkit-transition: $options /* Safari */
  transition: $options

=animation($options)
  -webkit-animation: $options /* Safari */
  animation: $options

=center-block // Quickly center any element within its parent. Requires width or max-width to be set.
  display: block
  margin:
    left: auto
    right: auto

=text-truncate // An easy way to truncate text with an ellipsis. Requires the element to be block or inline-block.
  overflow: hidden
  text-overflow: ellipsis
  white-space: nowrap

=abs-pos ($top: auto, $right: auto, $bottom: auto, $left: auto) // Pass in the desired location of your target element to produce all the necessary positioning code.
  top: $top
  right: $right
  bottom: $bottom
  left: $left
  position: absolute

=centered
  position: absolute
  top: 50%
  left: 50%
  transform: translate(-50%, -50%)

=flex($args...)
  -webkit-flex: $args /* Safari 6.1+ */
  -ms-flex: $args /* IE 10 */
  flex: $args

=displayFlex
  display: -webkit-flex /* Safari */
  display: flex

=flexDirection($dir: row)
  -webkit-flex-direction: $dir /* Safari 6.1+ */
  flex-direction: $dir

=flexGrow($ratio: 1)
  -webkit-flex-grow: $ratio
  flex-grow: $ratio

=justify-content($position: flex-start)
  -webkit-justify-content: $position
  justify-content: $position

=align-items($position: flex-start)
  -webkit-align-items: $position
  align-items: $position

=clearfix
  &:before, &:after
    content: ""
    display: table
  &:after
    clear: both

=mdl-alert($color)
  background-color: transparent
  border-color: $color
  color: $color

  a
    color: $color
    text-decoration: none
    font-style: italic
    font-weight: bold
'