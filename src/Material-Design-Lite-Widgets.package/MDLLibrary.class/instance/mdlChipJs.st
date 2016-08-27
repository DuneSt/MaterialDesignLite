chip
mdlChipJs
	^ 'window.addEventListener("load", initChips);

function initChips(){
  $.each($(".mdl-chip__deletable"), function (){
    addRemovableIconTo($(this))
  })

  $.each($(".mdl-chip__icon"), function (){
    addIconClassTo($(this));
  })

  $.each($(".mdl-chip__deletable-ajax"), function (){
    addAjaxRemovableIconTo($(this));
  })
}

function addRemovableIconTo(chip){
  var anchor = $("<a>").attr("href", chip.attr("href"));
  anchor.append(getDeleteIcon());
  chip.append(anchor);
  chip.removeAttr("href");
}

function addAjaxRemovableIconTo(chip){
  chip.append(getDeleteIcon().attr("onclick", chip.attr("onclick")));
  chip.removeAttr("onclick");
}

function addIconClassTo(chip){
  chip.parent().addClass("mdl-chip__with-icon");
}

function getDeleteIcon(){
	return $("<i>").addClass("material-icons").addClass("mdl-chip__deleteIcon").text("cancel");
}
'