/**
 * Front.js
 *
 * @author    Empty
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 */

$(document).ready(function() {


    //Send information**************************************************************************************************
    $("#customer-information form").submit(function() {
        $society = $("#customer-information #society").val();
        $first_name = $("#customer-information #first_name").val();
        $last_name = $("#customer-information #last_name").val();
        $email = $("#customer-information #email").val();
        $phone = $("#customer-information #phone").val();
        $contacted = $('#customer-information input[name=contacted]:checked').val();
        $spam = $('#customer-information #spam').val();

        if ($society == "" || $first_name == "" || $last_name == "" || $email == "") {
            alert("Il manque une information obligatoire à votre devis!");
            return false;
        }

        var url = prestashop.urls.base_url + "modules/pdfquotation/pdfquotation-ajax.php?society=" + $society + "&first_name=" + $first_name + "&last_name=" + $last_name + "&email=" + $email;
        url += "&phone=" + $phone + "&contacted=" + $contacted  + "&spam=" + $spam;

        $("#customer-information #society").val("");
        $("#customer-information #first_name").val("");
        $("#customer-information #last_name").val("");
        $("#customer-information #email").val("");
        $("#customer-information #phone").val("");

        gtag('event', 'conversion', {

            'send_to': 'AW-1069635118/A7xFCIKVi4wBEK6shf4D',
      
            'value': $('.big-value').data('value'),
      
            'currency': 'EUR',
      
            'transaction_id': ''
      
        });

        document.location.href = url;

        return false;
    });


    //Display Error*****************************************************************************************************
    function getQueryVar(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i=0;i<vars.length;i++) {
            var pair = vars[i].split("=");
            if(pair[0] == variable){return pair[1];}
        }
        return(false);
    }
    if (getQueryVar("error-pdf") == 1) {
        alert("Il manque une information obligatoire à votre devis!");
    }
});
