/*--------------------- AUTOSUGGEST ---------------------------------*/

function suggest(inputString){

		if(inputString.length == 0) {

			$('#suggestions').fadeOut();

		} else {

		$('#country').addClass('load');

			$.post("/autosuggest.php", {queryString: ""+inputString+""}, function(data){

				if(data.length >0) {

					$('#suggestions').fadeIn();

					$('#suggestionsList').html(data);

					$('#country').removeClass('load');

				}

			});

		}

	}



	function fill(thisValue) {

		$('#country').val(thisValue);

		setTimeout("$('#suggestions').fadeOut();", 600);

	}

	

/*--------------- END AUTOSUGGEST ------------------------------------------------*/



function selectState()

{

	var bankName	=	$("#bankName").val();

	

	$("#systemWorking").show();

	var urlpath	=	"/ajax/fetchState.php";

	

			$.post(urlpath, {bankName:bankName  },

				   function(html){					

					$("#stateName").html(html);	

					$("#systemWorking").hide();

				});

}



function selectDistrict()

{

	var bankName	=	$("#bankName").val();
	var stateName	=	$("#stateName").val();
	

	

	$("#systemWorking").show();

	var urlpath	=	"/ajax/fetchDistrict.php";

	

			$.post(urlpath, {stateName:stateName, bankName: bankName },

				   function(html){

					$("#district").html(html);	

					$("#systemWorking").hide();

				});

}



function selectBranch()

{

	var district	=	$("#district").val();
	var bankName	=	$("#bankName").val();
	

	$("#systemWorking").show();

	var urlpath	=	"/ajax/fetchBranch.php";

	

			$.post(urlpath, {district:district , bankName: bankName  },

				   function(html){

					$("#branch").html(html);	

					$("#systemWorking").hide();

				});

}





function checkForm()

{

	var bankName		=	$("#bankName").val();

	var stateName		=	$("#stateName").val();

	var district		=	$("#district").val();	

	var branch			=	$("#branch").val();	

	

	if(bankName == "")

	{

		alert("Please select Bank!");

		return false;

	}

	

	if(stateName == "")

	{

		alert("Please select State!");

		return false;

	}

	

	if(district == "")

	{

		alert("Please select District!");

		return false;

	}

	

	if(branch == "")

	{

		alert("Please select Branch!");

		return false;

	}	



}



function checkSearchForm()

{

	var searchVal	=	$("#country").val();

	

	if(searchVal == "")

	{

		alert("Please enetr IFSC/MICR!");

		return false;

	}

}









