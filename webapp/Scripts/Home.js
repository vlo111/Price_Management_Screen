// VALIDATION START AND FINISH DATE [ATTR]: oninput
// #region Datepicker oninput
function validateStartDate() {
    var dateInput = document.getElementById("startdate");
    var date = dateInput.value;
    var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

    dateInput.style.color = "white";

    if (dateRegex.test(date)) {
        dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
        document.getElementById("SubPart").disabled = false;
    }
    else {
        dateInput.style.backgroundColor = "rgba(255, 0, 17, 0.6)";
        document.getElementById("SubPart").disabled = true;
    }
}
function validateStartDate1() {
    var dateInput = document.getElementById("startdate1");
    var date = dateInput.value;
    var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

    dateInput.style.color = "white";

    if (dateRegex.test(date)) {
        dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
        document.getElementById("filterButton").removeAttribute("disabled", "disabled");
    }
    else {
        dateInput.style.backgroundColor = "rgba(255, 0, 17, 0.6)";
        document.getElementById("filterButton").setAttribute("disabled", "disabled");
    }
    if (date === "") {
        dateInput.style.backgroundColor = "white";
        document.getElementById("filterButton").removeAttribute("disabled", "disabled");
    }
}

function validateEndDate() {
    var dateInput = document.getElementById("finishdate");
    var date = dateInput.value;
    var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

    dateInput.style.color = "white";

    if (dateRegex.test(date)) {
        dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
        document.getElementById("SubPart").disabled = false;
    }
    else {
        dateInput.style.backgroundColor = "rgba(255, 0, 17, 0.6)";
        document.getElementById("SubPart").disabled = true;
    }
}
function validateEndDate1() {
    var dateInput = document.getElementById("finishdate1");
    var date = dateInput.value;
    var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

    dateInput.style.color = "white";

    if (dateRegex.test(date)) {
        dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
        document.getElementById("filterButton").removeAttribute("disabled", "disabled");
    }
    else {
        dateInput.style.backgroundColor = "rgba(255, 0, 17, 0.6)";
        document.getElementById("filterButton").setAttribute("disabled", "disabled");
    }
    if (date === "") {
        dateInput.style.backgroundColor = "white";
        document.getElementById("filterButton").removeAttribute("disabled", "disabled");
    }
}
function validateDate() {
    var dateInput = document.getElementById("date");
    var date = dateInput.value;
    var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

    dateInput.style.color = "white";

    if (dateRegex.test(date)) {
        dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
        document.getElementById("editRows").removeAttribute("disabled", "disabled");
    }
    else {
        dateInput.style.backgroundColor = "rgba(255, 0, 17, 0.6)";
        document.getElementById("editRows").setAttribute("disabled", "disabled");
    }
    if (date === "") {
        dateInput.style.backgroundColor = "white";
        document.getElementById("editRows").removeAttribute("disabled", "disabled");
    }
}

// #endregion

// Price Update Sell AND Cost
// #region Price Update Fields
function PriceUpdateSell() {
    var dateInput = document.getElementById("LinkUpdSellText").textContent = document.getElementById("sell").value;
}
function PriceUpdateCost() {
    var dateInput = document.getElementById("LinkUpdCostText").textContent = document.getElementById("cost").value;

}
// #endregion

// #region multyple EDIT modal - Clear Fields
function clearDate() {
    $('input[name=radioDate]:checked').prop("checked", false);
    document.getElementById("date").value = "";
    document.getElementById("date").style.backgroundColor = "white";
    document.getElementById("errDate").innerHTML = "";
    $('input[name=checkboxDate]:checked').prop("checked", false);
}
function clearPgPrice() {
    $('input[name=radioPgPrice]:checked').prop("checked", false);
    document.getElementById("pgPrice").value = "";
    document.getElementById("pgPrice").style.backgroundColor = "white";
    document.getElementById("errPgPrice").innerHTML = "";
    $('input[name=checkboxPgPrice]:checked').prop("checked", false);
}
function clearFixedPrice() {
    $('input[name=radioFixedPrice]:checked').prop("checked", false);
    document.getElementById("fixedPrice").value = "";
    document.getElementById("fixedPrice").style.backgroundColor = "white";
    document.getElementById("errFPrice").innerHTML = "";
    $('input[name=checkboxFixedPrice]:checked').prop("checked", false);
}
// #endregion
// #region multyple Delete modal
function selRowId() {
    var selRowIds = $('#jqgrid').jqGrid('getGridParam', 'selarrrow');

    var postData = { values: selRowIds, DelName: true };

    $.ajax({
        //contentType: "application/json; charset=utf-8",
        type: "get",
        url: '/Parts/Delete',
        data: postData,
        success: function (response) {
            if (response.success) {
                if (response.responseText != "")
                alertify.success(response.responseText);
                //$('#jqgrid').trigger("reloadGrid");
            }
            else {
                if (!alertify.myAlert) {
                    //define a new dialog
                    alertify.dialog('myAlert', function () {
                        return {
                            main: function (message) {
                                this.message = message;
                            },
                            setup: function () {
                                return {
                                    buttons: [{ text: "cancel!", key: 27/*Esc*/ }],
                                    focus: { element: 0 }
                                };
                            },
                            prepare: function () {
                                this.setContent(this.message);
                            },
                            hooks: {
                                // triggered when the dialog is shown, this is seperate from user defined onshow
                                onshow: function () {
                                },
                                // triggered when the dialog is closed, this is seperate from user defined onclose
                                onclose: function () {
                                    $('#myModal').modal('hide');
                                },
                                // triggered when a dialog option gets updated.
                                // IMPORTANT: This will not be triggered for dialog custom settings updates ( use settingUpdated instead).
                                onupdate: function () {
                                }
                            }
                        }
                    });
                }
                //launch it.

                alertify.myAlert(response.responseText);
            }
        },
        error: function (response) {
            if (!alertify.myAlert) {
                //define a new dialog
                alertify.dialog('myAlert', function () {
                    return {
                        main: function (message) {
                            this.message = message;
                        },
                        setup: function () {
                            return {
                                buttons: [{ text: "cancel!", key: 27/*Esc*/ }],
                                focus: { element: 0 }
                            };
                        },
                        prepare: function () {
                            this.setContent(this.message);
                        }
                    }
                });
            }
            //launch it.
            alertify.myAlert(response.responseText);
            $('#jqgrid').trigger('reloadGrid');
        },
        dataType: "json",
        traditional: true
    });

}

$(document).on("click", '#deleteRows', function (event) {
    $.ajax({
        //contentType: "application/json; charset=utf-8",
        type: "post",
        url: '/Parts/Delete',
        data: null,
        success: function (response) {
            if (response.success) {
                alertify.success(response.responseText);
                $('#jqgrid').trigger("reloadGrid");
                $('#myModal').modal('hide');
            }
            else {
                if (!alertify.myAlert) {
                    //define a new dialog
                    alertify.dialog('myAlert', function () {
                        return {
                            main: function (message) {
                                this.message = message;
                            },
                            setup: function () {
                                return {
                                    buttons: [{ text: "cancel!", key: 27/*Esc*/ }],
                                    focus: { element: 0 }
                                };
                            },
                            prepare: function () {
                                this.setContent(this.message);
                            }
                        }
                    });
                }
                //launch it.
                alertify.myAlert(response.responseText);
            }
        },
        error: function (response) {
            if (!alertify.myAlert) {
                //define a new dialog
                alertify.dialog('myAlert', function () {
                    return {
                        main: function (message) {
                            this.message = message;
                        },
                        setup: function () {
                            return {
                                buttons: [{ text: "cancel!", key: 27/*Esc*/ }],
                                focus: { element: 0 }
                            };
                        },
                        prepare: function () {
                            this.setContent(this.message);
                        }
                    }
                });
            }
            //launch it.
            alertify.myAlert(response.responseText);
            $('#jqgrid').trigger('reloadGrid');
        },
        dataType: "json",
        traditional: true
    });

});
// #endregion

$(document).ready(function () {
    // #region Modal
    $("a[data-modal]").on("click", function (e) {
        $('#myModalContent').load(this.href, function () {
            $('#myModal').modal({
                keyboard: true
            }, 'show');

            bindForm(this);
        });
        return false;
    });

    function bindForm(dialog) {
        $('form', dialog).submit(function () {
            if (ViewBag.det === "true") {
                $('#progress').show();
            }
            $.ajax({
                url: this.action,
                type: this.method,
                data: $(this).serialize(),
                success: function (result) {
                    if (result.success) {
                        $('#myModal').modal('hide');
                        $('#progress').hide();
                        location.reload();
                    } else {
                        $('#progress').hide();
                        $('#myModalContent').html(result);
                        bindForm();
                    }
                }
            });
            return false;
        });
    }

    // #endregion

    // START AND FINISH DATE
    // #region Datepicker
    $("#startdate").datepicker({
        dateFormat: 'dd.mm.yy',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        onSelect: function (selectedDate) {
            $("#finishdate").datepicker('option', 'minDate', selectedDate);
            var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

            var dateInput = document.getElementById("startdate");
            var date = dateInput.value;

            dateInput.style.color = "white";

            if (dateRegex.test(date)) {
                dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
                document.getElementById("SubPart").disabled = false;
            }
            else {
                dateInput.style.backgroundColor = "rgb(217, 83, 79)";
                document.getElementById("SubPart").disabled = true;
            }
        }
    });

    $("#startdate1").datepicker({
        dateFormat: 'dd.mm.yy',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        onSelect: function (selectedDate) {
            $("#finishdate1").datepicker('option', 'minDate', selectedDate);
            var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

            var dateInput = document.getElementById("startdate1");
            var date = dateInput.value;

            dateInput.style.color = "white";

            if (dateRegex.test(date)) {
                dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
                document.getElementById("filterButton").removeAttribute("disabled", "disabled");
            }
            else {
                dateInput.style.backgroundColor = "rgb(217, 83, 79)";
                document.getElementById("filterButton").setAttribute("disabled", "disabled");
            }
        }
    });

    $("#finishdate").datepicker({
        dateFormat: 'dd.mm.yy',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        onSelect: function (selectedDate) {
            $("#startdate").datepicker('option', 'maxDate', selectedDate);
            var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

            var dateInput = document.getElementById("finishdate");

            var date = dateInput.value;

            dateInput.style.color = "white";

            if (dateRegex.test(date)) {
                dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
                document.getElementById("SubPart").disabled = false;
            }
            else {
                dateInput.style.backgroundColor = "rgb(217, 83, 79)";
                document.getElementById("SubPart").disabled = true;
            }
        }
    });

    $("#finishdate1").datepicker({
        dateFormat: 'dd.mm.yy',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>',
        onSelect: function (selectedDate) {
            $("#startdate1").datepicker('option', 'maxDate', selectedDate);
            var dateRegex = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;

            var dateInput = document.getElementById("finishdate1");
            var date = dateInput.value;

            dateInput.style.color = "white";

            if (dateRegex.test(date)) {
                dateInput.style.backgroundColor = "rgba(0, 193, 41, 0.5)";
                document.getElementById("filterButton").removeAttribute("disabled", "disabled");
            }
            else {
                dateInput.style.backgroundColor = "rgba(255, 0, 17, 0.7)";
                document.getElementById("filterButton").setAttribute("disabled", "disabled");
            }

        }
    });

    $("#startdate, #startdate1").removeAttr("data-val-date");
    $("#finishdate, #finishdate1").removeAttr("data-val-date");


    // #endregion

    // Price Update Sell AND Cost
    // #region Autocomplete Search

    $('#searchPart').autocomplete({ source: '/Parts/AutocompleteSearch' })
        .data("ui-autocomplete")._renderItem = function (ul, item) {
            return $("<li></li>")
                .data("item.autocomplete", item)
                .append("<a><span style='display: inline-block;width:90px;'><b>" + item.value + "</b></span>" + item.title + "</a>")
                .appendTo(ul);
        };
    // #endregion

    // Custom Edit JQDrid
    // #region multyple EDIT modal

    $(document).on("click", '#editRows', function (event) {
        var flagRequired = true;
        if (event.target.name == "date") {
            if ($('input[name=radioDate]:checked').val() == null) {
                document.getElementById("errDate").innerHTML = "Please select at least one option to proceed";
                flagRequired = false;
            }
            if (document.getElementById("date").value == "") {
                document.getElementById("date").style.backgroundColor = "rgba(255, 0, 17, 0.6)";
                flagRequired = false;
            }
        }
        else if (event.target.name == "percentagePrice") {
            if ($('input[name=radioPgPrice]:checked').val() == null) {
                document.getElementById("errPgPrice").innerHTML = "Please select at least one option to proceed";
                flagRequired = false;
            }
            if (document.getElementById("pgPrice").value == "") {
                document.getElementById("pgPrice").style.backgroundColor = "rgba(247, 16, 33, 0.11)";
                flagRequired = false;
            }
            else {
                document.getElementById("pgPrice").style.backgroundColor = "white";
            }
        }
        else if (event.target.name == "FixedPrice") {
            if ($('input[name=radioFixedPrice]:checked').val() == null) {
                document.getElementById("errFPrice").innerHTML = "Please select at least one option to proceed";
                flagRequired = false;
            }
            if (document.getElementById("fixedPrice").value == "") {
                document.getElementById("fixedPrice").style.backgroundColor = "rgba(247, 16, 33, 0.11)";
                flagRequired = false;
            }
            else {
                document.getElementById("fixedPrice").style.backgroundColor = "white";
            }
        }
        if (flagRequired) {
            document.getElementById("errDate").innerHTML = "";
            document.getElementById("errPgPrice").innerHTML = "";
            document.getElementById("errFPrice").innerHTML = "";

            var selRowIds = $('#jqgrid').jqGrid('getGridParam', 'selarrrow');

            var list = [
                $('input[name=radioDate]:checked').val(),
                document.getElementById("date").value,
                $('input[name=checkboxDate]:checked').val(),

                $('input[name=radioPgPrice]:checked').val(),
                document.getElementById("pgPrice").value,
                $('input[name=checkboxPgPrice]:checked').val(),

                $('input[name=radioFixedPrice]:checked').val(),
                document.getElementById("fixedPrice").value,
                $('input[name=checkboxFixedPrice]:checked').val()

            ];

            var postData = { editList: list, values: selRowIds, name: event.target.name };

            $.ajax({
                //contentType: "application/json; charset=utf-8",
                type: "post",
                url: '/Parts/Edit',
                data: postData,
                success: function (response) {
                    if (response.success) {
                        alertify.success(response.responseText);
                        //var ids = $('#jqgrid').jqGrid('getGridParam', 'selarrrow');
                        $('#jqgrid').trigger("reloadGrid");
                        //for (var i = 0; i < ids.length; i++) {
                        //    var Row = $("#jqgrid #".concat(ids[i]));
                        //    Row.addClass("ui-state-disabled ui-jqgrid-disablePointerEvents");
                        //    Row.removeClass("ui-state-highlight");
                        //    var Input = $("tr.jqgrow > td > input").prop("checked", false);
                        //}
                    }
                    else {
                        if (!alertify.myAlert) {
                            //define a new dialog
                            alertify.dialog('myAlert', function () {
                                return {
                                    main: function (message) {
                                        this.message = message;
                                    },
                                    setup: function () {
                                        return {
                                            buttons: [{ text: "cancel!", key: 27/*Esc*/ }],
                                            focus: { element: 0 }
                                        };
                                    },
                                    prepare: function () {
                                        this.setContent(this.message);
                                    }
                                }
                            });
                        }
                        //launch it.
                        alertify.myAlert(response.responseText);
                    }
                },
                error: function (response) {
                    if (!alertify.myAlert) {
                        //define a new dialog
                        alertify.dialog('myAlert', function () {
                            return {
                                main: function (message) {
                                    this.message = message;
                                },
                                setup: function () {
                                    return {
                                        buttons: [{ text: "cancel!", key: 27/*Esc*/ }],
                                        focus: { element: 0 }
                                    };
                                },
                                prepare: function () {
                                    this.setContent(this.message);
                                }
                            }
                        });
                    }
                    //launch it.
                    alertify.myAlert(response.responseText);
                    $('#jqgrid').trigger('reloadGrid');
                },
                dataType: "json",
                traditional: true
            });
        }
    });
    // #endregion

    // #region filter Search Fields

    $('#filterButton').click(function (event) {
        event.preventDefault();
        filterGrid();
    });
    function filterGrid() {
        var postDataValues = $("#jqgrid").jqGrid('getGridParam', 'postData');
        // grab all the filter ids and values and add to the post object
        $('.filterItem').each(function (index, item) {
            postDataValues[$(item).attr('id')] = $(item).val();
        });
        $('#jqgrid').jqGrid().setGridParam({ postData: postDataValues, page: 1 }).trigger('reloadGrid');
    }
    // #endregion
    // #region JQGrid view - data
    pageSetUp();
    jQuery("#jqgrid").jqGrid({
        url: '/Parts/GetJqGridValues',
        datatype: 'json',
        mtype: 'Get',
        height: 'auto',
        colNames: ['PartID', 'PartNo', 'Category', 'Description', 'Start Date', 'End Date', 'Date Created', 'Sell', 'Cost', 'Curency', 'Customer'],
        colModel: [
            // 'PartID', hidden: true!!! 
            {
                name: 'PartID', index: 'PartID', width: 100, editable: true,
                editrules: { required: true, edithidden: true },
                hidden: true,
                key: true,
                editoptions: { dataInit: function (element) { jq(element).attr("readonly", "readonly"); } }
            },
            { name: 'PartNo', index: 'OrderBy_PartNo', firstsortorder: 'desc' },
            { name: 'CategoryName', index: 'OrderBy_CategoryName', editable: true },
            { name: 'Description', index: 'OrderBy_Description', editable: true },
            { name: 'ValidStart', index: 'OrderBy_Start', sorttype: "date", formatoptions: { newformat: 'm-d-Y' }, datefmt: 'm-d-Y', formatter: 'date', editable: true },
            { name: 'ValidEnd', index: 'OrderBy_End', sorttype: "date", align: "right", formatoptions: { newformat: 'm-d-Y' }, datefmt: 'm-d-Y', formatter: 'date', editable: true },
            { name: 'DateCreated', index: 'OrderBy_DCreated', sorttype: "date", formatoptions: { newformat: 'm-d-Y' }, datefmt: 'm-d-Y', formatter: 'date', align: "right", editable: true },
            { name: 'Sell', index: 'OrderBy_Sell', formatter: 'currency', align: "right", editable: true, defaultvalue: null },
            { name: 'Cost', index: 'OrderBy_Cost', formatter: 'currency', align: "right", editable: true },
            { name: 'CurrencyName', index: 'OrderBy_CurrencyName', align: "right", editable: true },
            { name: 'CustomerName', index: 'OrderBy_CustomerName', align: "center", editable: true }],
        onSelectRow: function (id, status) {
            if (!status)
                document.getElementById("DelName").classList.remove('disabled');
        },
        onSelectAll: function (id, status) {
            if (status)
                document.getElementById("DelName").classList.add('disabled');
            else
                document.getElementById("DelName").classList.remove('disabled');
        },
        rowNum: 50,
        rowList: [10, 30, 50],
        pager: '#pjqgrid',
        sortname: 'id',
        toolbarfilter: true,
        viewrecords: true,
        sortorder: "asc",
        jsonReader: {
            root: "rows",
            page: "page",
            total: "total",
            records: "records",
            repeatitems: false,
            Id: "0"
        },
        caption: "Price Management",
        multiselect: true,
        autowidth: true
    }).navGrid("#pjqgrid", { edit: false, del: false, add: false, search: false, refresh: false });
    // #endregion

    // #region JQGrid set up
    //jQuery("#jqgrid").jqGrid('inlineNav', "#pjqgrid");

    /* Add tooltips */
    $('.navtable .ui-pg-button').tooltip({
        container: 'body'
    });

    jQuery("#m1s").click(function () {
        jQuery("#jqgrid").jqGrid('setSelection', "13");
    });
    // #endregion

    // #region remove and add classes

    // remove classes
    $(".ui-jqgrid").removeClass("ui-widget ui-widget-content");
    $(".ui-jqgrid-view").children().removeClass("ui-widget-header ui-state-default");
    $(".ui-jqgrid-labels, .ui-search-toolbar").children().removeClass("ui-state-default ui-th-column ui-th-ltr");
    $(".ui-jqgrid-pager").removeClass("ui-state-default");
    $(".ui-jqgrid").removeClass("ui-widget-content");

    //$("#jqgrid").closest("div.ui-jqgrid-view").children("div.ui-jqgrid-titlebar").children("span.ui-jqgrid-title").css("text-color", "black");
    $("#jqgrid").closest("div.ui-jqgrid-view").children("div.ui-jqgrid-titlebar").css("text-align", "center").children("span.ui-jqgrid-title").css("float", "none");
    // add classes
    $(".ui-jqgrid-htable").addClass("table table-bordered table-hover");
    $(".ui-jqgrid-btable").addClass("table table-bordered table-striped");

    $(".ui-pg-div").removeClass().addClass("btn btn-sm btn-primary");
    $(".ui-icon.ui-icon-plus").removeClass().addClass("fa fa-plus");
    $(".ui-icon.ui-icon-pencil").removeClass().addClass("fa fa-pencil");
    $(".ui-icon.ui-icon-trash").removeClass().addClass("fa fa-trash-o");
    $(".ui-icon.ui-icon-search").removeClass().addClass("fa fa-search");
    $(".ui-icon.ui-icon-refresh").removeClass().addClass("fa fa-refresh");
    $(".ui-icon.ui-icon-disk").removeClass().addClass("fa fa-save").parent(".btn-primary").removeClass("btn-primary").addClass("btn-success");
    $(".ui-icon.ui-icon-cancel").removeClass().addClass("fa fa-times").parent(".btn-primary").removeClass("btn-primary").addClass("btn-danger");

    $(".ui-icon.ui-icon-seek-prev").wrap("<div class='btn btn-sm btn-default'></div>");
    $(".ui-icon.ui-icon-seek-prev").removeClass().addClass("fa fa-backward");

    $(".ui-icon.ui-icon-seek-first").wrap("<div class='btn btn-sm btn-default'></div>");
    $(".ui-icon.ui-icon-seek-first").removeClass().addClass("fa fa-fast-backward");

    $(".ui-icon.ui-icon-seek-next").wrap("<div class='btn btn-sm btn-default'></div>");
    $(".ui-icon.ui-icon-seek-next").removeClass().addClass("fa fa-forward");

    $(".ui-icon.ui-icon-seek-end").wrap("<div class='btn btn-sm btn-default'></div>");
    $(".ui-icon.ui-icon-seek-end").removeClass().addClass("fa fa-fast-forward");

    $(window).on('resize.jqGrid', function () {
        $("#jqgrid").jqGrid('setGridWidth', $("#content").width());
    });
    // #endregion
});