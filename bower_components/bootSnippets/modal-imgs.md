<aside class="photosfromlastyear">
	<h2>Last year</h2>
	<p>Did you miss last year's conference? Check out some photos from the event.</p>
	<div class="modalphotos photogrid clearfix">
		<img src="i/slides/artist_on_table_tn.jpg" alt="Artist on a table">
		<img src="i/slides/at_the_museum_tn.jpg" alt="At the museum">
		<img src="i/slides/charcoal_artist_painting_tn.jpg" alt="Charcoal artist painting">
		<img src="i/slides/framing_workshop_tn.jpg" alt="Framing workshop">
		<img src="i/slides/glassmaking_workshop_tn.jpg" alt="Glassmaking workshop">
		<img src="i/slides/glassworking_workshop_tn.jpg" alt="Glassmaking workshop">
	</div>
</aside>


<script>

//show modals

	$('.modalphotos img').on('click', function() {
		$('#modal').modal({
			show: true,
		})

		var mysrc = this.src.substr(0, this.src.length-7) + '.jpg';
		$('#modalimage').attr('src', mysrc);
		$('#modalimage').on('click', function(){
				$('#modal').modal('hide');
		})//hide modal
	});//show modal

</script>

<!--Вставим в header.html-->
<!-- Modal -->
	<section id="modal" class="modal fade">
		<div class="modal-body">
			<img id="modalimage" src="" alt="Modal Photo">
		</div><!-- modal-body -->
	</section><!-- modal -->