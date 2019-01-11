$(function () {
  $(".js-more").on('click', function() {
    let id = $(this).data("id");
    $.get("/posts/" + id + "/body", function(data) {
      // Replace text of body-id div
      $("#body-" + id).text(data);
    });
  });
});
