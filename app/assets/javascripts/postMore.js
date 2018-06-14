$(function () {
    $('.js-more').click(function (e) {
        let id = $(this).data('id');
        $.get(`/posts/${id}/body`, function (data) {
            $(`#body-${id}`).text(data);
        });
    });
});