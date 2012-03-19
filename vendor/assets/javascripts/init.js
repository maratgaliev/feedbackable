$().ready(function() {
    $('#dialog').jqm();
    $('.jqmClose').on('click',function() {
        $("#new_feedback-notice").html('');
    });
});
