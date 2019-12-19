$(document).ready(function () {
    $(".product").mouseover(function () {
        $(this).addClass("zoomIn", 500);
    });
    $(".product").mouseout(function () {
        $(this).removeClass("zoomIn", 500);
    });

    $(document).ready(function () {

        var cities = [
    "New York",
    "Los Angeles",
    "Chicago",
    "Houston",
    "Philadelphia",
    "Phoenix",
    "San Antonio",
    "Dallas",
    "San Jose",
    "Austin",
    "Columbus",
    "San Francisco",
     "Detroit",
    "Memphis",
    "Boston",
    "Seattle",
    "Denver",
    "Washington",
    "Nashville",
    "Louisville",
    "Baltimore",
    "Oklahoma City",
    "Kansas City",
    "Atlanta",
    "Minneapolis"
        ];
       // $("#city").addClass('autoCompleteClass');
        $("#city").autocomplete({ source: cities });

    });


});
