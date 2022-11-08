$(document).ready(function() {

			$('ul.links li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.links li').removeClass('current');
				$('.post').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			})
		})
		