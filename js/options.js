$(document).ready(function() {
    $('#save-options-button').click(function() {
        var email = $('#email').val();
        console.log(email);
        $.ajax({
            url: "http://readahead.herokuapp.com/users/login.json",
            type: "POST",
            data: {"email": email},
            dataType: "json",
            success: function(data) {
                console.log(data);
            }
        });
    });
});
