
// Module Revealing Pattern For Order Related Scripts
var OrderJs = function () {
    $('#create_tag_btn').on('click', function () {
        var tagName = $('#tag_name').val();
        var custOrderId = $('#custOrderID').val();
        if (tagName != null && tagName !== "") {
            createNewTag(tagName, custOrderId);
            $('#tag_name').val("");
        } else {
            toastr.error("Please enter tag name first");
        }
    });

    function saveTagInOrder(tagName, custOrderId) {
        $.ajax({
            dataType: "json",
            url: "/Order/AddTagToOrder",
            async: false,
            type: "POST",
            data: { "custOrderId": custOrderId, "tagName": tagName, "shipmentId": 0 },
            success: function (data) {
                if (data) {
                    toastr.success("Tag saved in Order");
                } else {
                    toastr.error("An error occurred. Try again");
                }
            },
            failure: function (data) {

            }
        });
    }

    function createNewTag(tagName, custOrderId) {
        var parentDiv = $('.tagPanelDetail');
        var emptyTagFormDiv = $('.emptyFormTag');
        var containerDiv = document.createElement("div");
        //$(containerDiv).addClass("panel panel-default tagPanel active");
        $(containerDiv).addClass("panel panel-default tagPanel newAddedTagDiv");

        var formHorizontalDiv = document.createElement("div");
        $(formHorizontalDiv).addClass("form-horizontal");

        createNameFormGroup(tagName, containerDiv, emptyTagFormDiv, formHorizontalDiv);
        createProfilePriorityFormGroup(containerDiv, emptyTagFormDiv, formHorizontalDiv);
        createColorFormGroup(containerDiv, emptyTagFormDiv, formHorizontalDiv);
        createPartsTable(containerDiv);
        $(parentDiv).prepend(containerDiv);   // putting form-horizontal in panel-default div
        saveTagInOrder(tagName, custOrderId);
    }

    function createNameFormGroup(tagName, containerDiv, emptyTagFormDiv, formHorizontalDiv) {
        var divFormGroup = document.createElement("div");
        $(divFormGroup).addClass("form-group");

        var nameLabel = document.createElement("label");
        $(nameLabel).addClass("col-sm-6 col-md-2 col-lg-2 tagLabel");
        nameLabel.innerHTML = "Name";

        var nameInputDiv = document.createElement("div");
        $(nameInputDiv).addClass("col-sm-6 col-md-4 col-lg-4");

        var nameInputField = document.createElement("input");
        nameInputField.type = "text";
        $(nameInputField).addClass("form-control input-xs");
        nameInputField.id = "tagName";
        nameInputField.placeHolder = "99418-2";
        nameInputField.value = tagName;

        $(nameInputDiv).append(nameInputField);  // putting input field in its div

        var groupLabel = document.createElement("label");
        $(groupLabel).addClass("col-sm-6 col-md-2 col-lg-2 tagLabel");
        groupLabel.innerHTML = "Group";

        var groupDropDownDiv = document.createElement("div");
        $(groupDropDownDiv).addClass("col-sm-6 col-md-4 col-lg-4");

        var selectLabel = document.createElement("label");
        $(selectLabel).addClass("select");

        var selectGroup = document.createElement("select");
        selectGroup.id = "TagGroup";
        $(selectGroup).addClass("input-xs tagDropDown");

        var option1 = document.createElement('option');
        option1.value = 0;
        option1.text = 'Select';
        var option2 = document.createElement('option');
        option2.value = 1;
        option2.text = 'Alexandra';
        var option3 = document.createElement('option');
        option3.value = 2;
        option3.text = 'Alice';
        var option4 = document.createElement('option');
        option4.value = 3;
        option4.text = 'Anastasia';
        var option5 = document.createElement('option');
        option5.value = 4;
        option5.text = 'Avelina';
        selectGroup.appendChild(option1);   // adding options to Group dropdown
        selectGroup.appendChild(option2);
        selectGroup.appendChild(option3);
        selectGroup.appendChild(option4);
        selectGroup.appendChild(option5);

        selectLabel.appendChild(selectGroup);   // putting dropdown in its label

        groupDropDownDiv.appendChild(selectLabel);  // putting label in the div

        divFormGroup.appendChild(nameLabel);   // putting name label in the form-group
        divFormGroup.appendChild(nameInputDiv);   // putting name input field in the form-group
        divFormGroup.appendChild(groupLabel);    // putting group label in the form-group
        divFormGroup.appendChild(groupDropDownDiv);   // putting group dropdown in the form-group
        formHorizontalDiv.appendChild(divFormGroup);   // putting form-group in form-horizontal
        containerDiv.appendChild(formHorizontalDiv);   // putting form-group in form-horizontal
    }

    function createProfilePriorityFormGroup(containerDiv, emptyTagFormDiv, formHorizontalDiv) {
        var divFormGroup = document.createElement("div");
        $(divFormGroup).addClass("form-group");

        var profileLabel = document.createElement("label");
        $(profileLabel).addClass("col-sm-6 col-md-2 col-lg-2 tagLabel");
        profileLabel.innerHTML = "Profile";

        var profileDropDownDiv = document.createElement("div");
        $(profileDropDownDiv).addClass("col-sm-6 col-md-4 col-lg-4");

        var selectLabel = document.createElement("label");
        $(selectLabel).addClass("select");

        var selectProfile = document.createElement("select");
        selectProfile.id = "TagProfile";
        $(selectProfile).addClass("input-xs tagDropDown");

        var profileOption1 = document.createElement('option');
        profileOption1.value = 0;
        profileOption1.text = 'Select';
        var profileOption2 = document.createElement('option');
        profileOption2.value = 1;
        profileOption2.text = 'Century';
        var profileOption3 = document.createElement('option');
        profileOption3.value = 2;
        profileOption3.text = 'Alice';
        var profileOption4 = document.createElement('option');
        profileOption4.value = 3;
        profileOption4.text = 'Anastasia';
        var profileOption5 = document.createElement('option');
        profileOption5.value = 4;
        profileOption5.text = 'Avelina';
        selectProfile.appendChild(profileOption1);   // adding options to Group dropdown
        selectProfile.appendChild(profileOption2);
        selectProfile.appendChild(profileOption3);
        selectProfile.appendChild(profileOption4);
        selectProfile.appendChild(profileOption5);

        selectLabel.appendChild(selectProfile);   // putting dropdown in its label

        profileDropDownDiv.appendChild(selectLabel);  // putting label in the div

        selectLabel = null;  // so that is can be used again for priority
        /////////// profile label and its dropdown has been appended here /////////////////


        var priorityLabel = document.createElement("label");
        $(priorityLabel).addClass("col-sm-6 col-md-2 col-lg-2 tagLabel");
        priorityLabel.innerHTML = "Priority";

        var priorityDropDownDiv = document.createElement("div");
        $(priorityDropDownDiv).addClass("col-sm-6 col-md-4 col-lg-4");

        selectLabel = document.createElement("label");
        $(selectLabel).addClass("select");

        var selectPriority = document.createElement("select");
        selectPriority.id = "TagProfile";
        $(selectPriority).addClass("input-xs tagDropDown");

        var priorityOption1 = document.createElement('option');
        priorityOption1.value = 0;
        priorityOption1.text = 'Select';
        var priorityOption2 = document.createElement('option');
        priorityOption2.value = 1;
        priorityOption2.text = 'Normal';
        var priorityOption3 = document.createElement('option');
        priorityOption3.value = 2;
        priorityOption3.text = 'Alice';
        var priorityOption4 = document.createElement('option');
        priorityOption4.value = 3;
        priorityOption4.text = 'Anastasia';
        var priorityOption5 = document.createElement('option');
        priorityOption5.value = 4;
        priorityOption5.text = 'Avelina';
        selectPriority.appendChild(priorityOption1);   // adding options to Group dropdown
        selectPriority.appendChild(priorityOption2);
        selectPriority.appendChild(priorityOption3);
        selectPriority.appendChild(priorityOption4);
        selectPriority.appendChild(priorityOption5);

        selectLabel.appendChild(selectPriority);   // putting dropdown in its label

        priorityDropDownDiv.appendChild(selectLabel);  // putting label in the div
        /////////// priority label and its dropdown has been appended here /////////////////

        divFormGroup.appendChild(profileLabel);   // putting profile label in the form-group
        divFormGroup.appendChild(profileDropDownDiv);   // putting profile dropdown
        divFormGroup.appendChild(priorityLabel);    // putting priority label in the form-group
        divFormGroup.appendChild(priorityDropDownDiv);   // putting priority dropdown in the form-group
        formHorizontalDiv.appendChild(divFormGroup);   // putting form-group in form-horizontal
        containerDiv.appendChild(formHorizontalDiv);   // putting form-group in form-horizontal
    }

    function createColorFormGroup(containerDiv, emptyTagFormDiv, formHorizontalDiv) {
        var divFormGroup = document.createElement("div");
        $(divFormGroup).addClass("form-group");

        var colorLabel = document.createElement("label");
        $(colorLabel).addClass("col-sm-6 col-md-2 col-lg-2 tagLabel");
        colorLabel.innerHTML = "Color";

        var colorDropDownDiv = document.createElement("div");
        $(colorDropDownDiv).addClass("col-sm-6 col-md-4 col-lg-4");

        var selectLabel = document.createElement("label");
        $(selectLabel).addClass("select");

        var selectColor = document.createElement("select");
        selectColor.id = "TagGroup";
        $(selectColor).addClass("input-xs tagDropDown");

        var option1 = document.createElement('option');
        option1.value = 0;
        option1.text = 'Select';
        var option2 = document.createElement('option');
        option2.value = 1;
        option2.text = 'Mil Finish';
        var option3 = document.createElement('option');
        option3.value = 2;
        option3.text = 'Alice';
        var option4 = document.createElement('option');
        option4.value = 3;
        option4.text = 'Anastasia';
        var option5 = document.createElement('option');
        option5.value = 4;
        option5.text = 'Avelina';
        selectColor.appendChild(option1);   // adding options to Group dropdown
        selectColor.appendChild(option2);
        selectColor.appendChild(option3);
        selectColor.appendChild(option4);
        selectColor.appendChild(option5);

        selectLabel.appendChild(selectColor);   // putting dropdown in its label

        colorDropDownDiv.appendChild(selectLabel);  // putting label in the div
        /////////// color label and its dropdown has been appended here /////////////////

        var pinMeBtn = document.createElement("button");
        $(pinMeBtn).addClass("btn btn-warning pin-it");
        pinMeBtn.innerHTML = "Select";

        divFormGroup.appendChild(colorLabel);    // putting group label in the form-group
        divFormGroup.appendChild(colorDropDownDiv);   // putting group dropdown in the form-group
        divFormGroup.appendChild(pinMeBtn);   // putting PIN ME button in the form-group
        formHorizontalDiv.appendChild(divFormGroup);   // putting form-group in form-horizontal
        containerDiv.appendChild(formHorizontalDiv);   // putting form-group in form-horizontal
    }

    function createPartsTable(containerDiv) {
        var tableDiv = document.createElement("div");
        $(tableDiv).addClass('custom-scroll table-responsive');
        tableDiv.style.height = '100px';
        tableDiv.style.overflow = 'scroll';

        var table = document.createElement("table");
        $(table).addClass('table table-bordered');

        var tableHead = document.createElement('thead');
        var tableHeadRow = document.createElement('tr');

        var tableHeadRowCol1 = document.createElement('th');
        tableHeadRowCol1.innerHTML = '#';
        var tableHeadRowCol2 = document.createElement('th');
        tableHeadRowCol2.innerHTML = 'PartsId';
        var tableHeadRowCol3 = document.createElement('th');
        tableHeadRowCol3.innerHTML = 'Description';
        var tableHeadRowCol4 = document.createElement('th');
        tableHeadRowCol4.innerHTML = 'Act';

        tableHeadRow.appendChild(tableHeadRowCol1);    // appending THs in TR in table head
        tableHeadRow.appendChild(tableHeadRowCol2);
        tableHeadRow.appendChild(tableHeadRowCol3);
        tableHeadRow.appendChild(tableHeadRowCol4);

        tableHead.appendChild(tableHeadRow);   // appending TR in THEAD

        var tableBody = document.createElement('tbody');   // empty table body

        table.appendChild(tableHead);   // appedning THEAD in TABLE
        table.appendChild(tableBody);   // appedning TBODY in TABLE
        tableDiv.appendChild(table);    // appending TABLE in div
        containerDiv.appendChild(tableDiv);   // putting table div in container i.e. panel panel-default tagPanel active
    }

    function saveCommentsAndQuantity(quantity, comment, orderPartId) {
        $.ajax({
            dataType: "json",
            type: "POST",
            async: false,
            url: "/Order/SaveQuantityAndCommentsByOrderPartId",
            data: { 'quantity': quantity, 'comment': comment, 'orderPartId': orderPartId },
            success: function (data) {
                if (data) {
                    toastr.success("Record updated successfully");
                } else {
                    toastr.error("Something went wrong. Try again.");
                }
            }
        });
    }

    $('#save_shipping_edit_changes').on('click', function () {
        var orderPartId = $('#shipping_edit_modal').data('orderpartid');
        var quantity = $('#quantity').val();
        var comment = $('#comment').val();

        saveCommentsAndQuantity(quantity, comment, orderPartId);
    });

    function showPinItButtonOnDefaultTag() {
        // this code will show pin it button on default tag
        var defaultTagDiv = $('.emptyFormTag');
        var formHorizontalDiv = $(defaultTagDiv).children()[0];
        var buttonFormGroupDiv = $(formHorizontalDiv).children()[2];
        var button = $(buttonFormGroupDiv).children()[2];
        $(button).css('display', 'block');
    }

    $(document).on('click', '.pin-it', function () {
        var activeTagsLength = $('.tagPanelDetail').children('.active').length;
        if (activeTagsLength > 0) {
            toastr.warning("There can be only one Active Tag");
        }
        else {
            var divToMakeActive = $(this).closest(".newAddedTagDiv");
            $(divToMakeActive).addClass('active');
            $(this).hide();
            showPinItButtonOnDefaultTag();
        }
    });

    $('#deleteTagPartBtn').on('click', function () {
        var custOrderId = "";
        var partId = "";
        var shouldRemove = false;
        // we are getting the tag that is active in the tags section
        var activeTagSection = $('.tagPanelDetail').children('.active');
        //finding the active tag's table container that holds the table with class custom-scroll
        var tableContainer = $(activeTagSection).children('.custom-scroll');
        //getting the table in which we have to add the part
        var activeTagTable = $(tableContainer).children('.table');
        //getting table body of the table as our will have thead and tbody as its children
        var activeTagTableBody = $(activeTagTable).children()[1];
        //getting row count of the tbody
        var rowCount = $(activeTagTableBody).children().length;
        $(activeTagTableBody).children().each(function () {
            var value = $(this).data('tobedeleted');
            if (value === true) {
                $(this).remove();
                //custOrderId = $(this).data('custorderid');
                //partId = $(this).data('partid');
            }
        });

        //if (custOrderId !== "" && partId !== "") {
        //    $.ajax({
        //        dataType: "json",
        //        url: "/Order/DeletePartFromOrderTag",
        //        async: false,
        //        type: "POST",
        //        data: { "custOrderId": parseInt(custOrderId), "partId": parseInt(partId) },
        //        success: function (data) {
        //            if (data) {
        //                toastr.success("Part successfully deleted from Tag");
        //            } else {
        //                toastr.error("An error occurred. Try again");
        //            }
        //        },
        //        failure: function (data) {

        //        }
        //    });
        //}
    });

    return {

    }
}();