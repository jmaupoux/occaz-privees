$('.show-all').on('click', function () {
    $(this).hide();
    $(this).closest(".card").removeClass("summary");
})