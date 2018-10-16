sass
paginationSass
	^ '@import "variables"

.mdl-pagination
  height: 60px
  text-align: center
  width: 100%

  .mdl-textfield
    padding: 20px 0 0 0

  .mdl-textfield__label::after
    bottom: 0

  form
    margin-left: 10px
    display: initial

  .mdl-pagination__pages
    padding-top: 10px

  .mdl-pagination__container
    display: inline-flex

  .mdl-pagination__pages-buttons
    display: inline-block

    button, a
      margin: 0
      padding: .5em 1em
      border: 0
      background-color: transparent
      box-shadow: inset 0px -2px 0px 0px $grey400
      color: $grey400
      font: inherit
      text-decoration: none

      &:hover
        box-shadow: inset 0px -4px 0px 0px $grey400

      &[disabled]
        box-shadow: inset 0px -2px 0px 0px $grey300
        color: #e6e6e6

    .mdl-pagination__current
      font-weight: bold !important'