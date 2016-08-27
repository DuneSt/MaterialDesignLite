chip
mdlChipJs
	^ 'window.addEventListener("load", function(){
  $.each($(".mdl-chip__deletable"), function (){
    addRemovableIconTo($(this))
  })
  $.each($(".mdl-chip__icon"), function (){
    $(this).parent().addClass("mdl-chip__with-icon");
  })
});

function addRemovableIconTo(chip){
  var anchor = $("<a>").attr("href", chip.attr("href"));
  anchor.append($("<i>").addClass("material-icons").addClass("mdl-chip__deleteIcon").text("cancel"));
  chip.append(anchor);
  chip.removeAttr("href");
}'