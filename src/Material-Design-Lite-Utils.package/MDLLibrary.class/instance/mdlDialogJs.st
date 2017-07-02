javascript
mdlDialogJs
	^ 'function newDialog(id) {
    var dialog = $("#" + id);
    var dial = dialog[0];

    if (!dial.showModal) {
        dialogPolyfill.registerDialog(dial);
    }

    addOpenEvent(dial, $("#" + dialog.data("openbtnid")));
    addOpenEvent(dial, $("*[data-opendialog=''" + dialog.data("openbtnid") + "'']"));

    if (dialog.data("closebtnid"))
        $("#" + dialog.data("closebtnid")).click(function () {
            dial.close();
        });

    dialog.find(".close").each(function (ind, elem) {
        $(elem).click(function () {
            dial.close();
        });
    });
}

function addOpenEvent(dialog, element){
    element.click(function () {
        if ($("dialog").attr("open") == null) {
            dialog.showModal();
        }

        $(".backdrop").click(function () {
            dialog.close();
        });
        $("._dialog_overlay").hide();
    });
}

function setVerticalPositionOf(element) {
    element.css("top", ($(window).height() - element.height()) / 2)
}'