/* ---- Portfolio Isotope ---- */
$(document).ready(function() {
  $.ajax({
    url: "/getItems",
    type: "POST",
    async: false,
    data: {
      name: "Variable sent from client side"
      //x_groupers: x_groupers,
      //x_groupers: JSON.stringify(v.x_groupers),
      //is_stacked: is_stacked
    },
    success: function(response) {
      let data = JSON.parse(response);
      //console.log(data);
      all_items = data.all_items;

      for (let i = 0; i < all_items.length; i++) {
        let item = all_items[i];

        let topics = "";
        let image_url = item.url;
        let title = item.title;
        let creator = item.creator_first_name + " " + item.creator_last_name;

        let card_div = `
								<div class="col-md-4 item" style="position: absolute; top: 300px;">
									<a href="${image_url}" class="zoom">
										<div class="grid-item">
											<div class="overlay">
												<div class="inner-overlay">
													<h4>${title}</h4>
													<span>${creator}</span>
												</div>
											</div>
											<img src="${image_url}" class="img-responsive" alt="...">
										</div>
									</a>
								</div>							
							`;
        document.getElementById("portfolio").innerHTML =
          document.getElementById("portfolio").innerHTML + card_div;
      }

      let $grid = $(".grid").isotope({
        itemSelector: ".item",
        layoutMode: "masonry"
      });
      $(".filter-button-group").on("click", "li", function() {
        var filterValue = $(this).attr("data-filter");
        $grid.isotope({
          filter: filterValue
        });
      });
      $(".filter-button-group").each(function(t, e) {
        var i = $(e);
        i.on("click", "li", function() {
          i.find(".active").removeClass("active"), $(this).addClass("active");
        });
      });

      let l = document.getElementById("alltopics");
      var filterValue = $(l).attr("data-filter");
      $grid.isotope({
        filter: filterValue
      });

      return 1;
    },
    error: function(response) {
      console.log("===== ERROR =====");
      console.log(response);
      return -1;
    }
  });
});
