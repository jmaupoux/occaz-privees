$('.show-description').on('click', function () {
    $(this).hide();
    $(this).closest(".card").removeClass("mini-description");
})