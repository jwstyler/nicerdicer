$(document).ready(function () {
    /** back to the homescreen*/
    $('#home').click(function () {
        location.href = '/';
    });

    /** go to the site to insert a neu term */
    $('#insert-nav').click(function () {
        location.href = '/addTerms.php';
    });

    /** go to the site to search a specific word in the terms */
    $('#search-nav').click(function () {
        location.href = '/searchTerms.php';
    });

    /** get term data of the group */
    function getTerms(event, val) {
        event.preventDefault();
        if (val === 'Begriff/Gruppe einfügen' || val === 'Begriff suchen') {
            return;
        }
        $.ajax({
            type: 'GET',
            url: '../PHP-Skripte/selectTerms.php?nav=' + val,
            data: $(this).serialize(),
            success: function (data) {
                $('#terms').html(data);
            }
        });
    }

    /** loade the data of the chosen group */
    $('.group').click(function (event) {
        var val = $(this).html();
        getTerms(event, val);
    });

    /** save the data in the database */
    $('#term-btn').click(function () {
        var termName, termGroup, termDescription;
        termName = $('#term-name').val();
        termGroup = $('#term-group').val();
        termDescription = $('#term-description').val();

        if (termName == "" || termGroup == "" || termDescription == "") {
            alert("Es müssen aller Felder ausgefüllt sein!");
            return;
        }

        if (termGroup == 99999) {
            alert("Bitte eine Gruppe auswählen!");
            return;
        }

        /** send the term to the database */
        $.post("../PHP-Skripte/insertTerms.php",
            {
                termName: termName,
                termGroup: termGroup,
                termDescription: termDescription
            },
            function () {
            });
        location.reload();
    });

    /** search for a term or in the description */
    $('#search-term').keyup(function () {
        var input = $('#search-term').val();

        /** search for the word */
        $.ajax({
            type: 'GET',
            url: '../PHP-Skripte/searchForTerms.php?input=' + input,
            data: $(this).serialize(),
            success: function (data) {
                $('#terms-search').html(data);
            }
        });
    });

    /** add new group */
    $('#group-add-btn').click(function () {
        var groupName = $('#group-name').val();


        if (groupName == "") {
            alert("Es muss ein Gruppenname eingetragen sein!");
            return;
        }

        /** send the term to the database */
        $.post("../PHP-Skripte/insertGroup.php",
            {
                groupName: groupName
            },
            function () {
            });
        alert("Gruppe: " + groupName + " wurde angelegt.");
    });

});