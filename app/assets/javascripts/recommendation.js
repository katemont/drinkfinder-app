// Character counter needs amending

// $().ready(function(e){

//   var characterCount = 0;
//   $('#new_recommendation').before("<p id='new_recommendation_character_count'></p>");
//   $('#new_recommendation div:last > input').attr('disabled', 'disabled');

//   $('#new_recommendation').on('keyup',function(e){
//     characterCount = $('#recommendation_content').val().length;  
//     checkMessageLengthAndEnableAndDisableNewRecommendationBox(characterCount);
//     displayCharacterCount(characterCount);
//   });

//   function displayCharacterCount(characterCount){
//     $('#new_recommendation_character_count').text(characterCount + "/200");
//   }

//   function checkMessageLengthAndEnableAndDisableNewRecommendationBox(charlength) {
//     if (charlength > 200) {
//         $("input[type=submit]").attr('disabled', 'true');
//     } else {
//         $("input[type=submit]").removeAttr('disabled');
//     }
//   }
//   