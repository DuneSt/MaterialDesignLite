sass
selectSass
	^ '@import "variables"

.mdl-select
  width: 100%

  .mdl-icon-toggle__label
    float: right
    margin-top: -30px
    color: rgba(0,0,0,0.4)

  .mdl-menu__container
    width: 100% !important

    .mdl-menu
      .mdl-menu__item
        font-size: 16px

  .mdl-textfield__input
    width: calc(100% - 25px)
    text-overflow: ellipsis

.mdl-select.is-focused
  .mdl-icon-toggle__label
    color: #3f51b5
'