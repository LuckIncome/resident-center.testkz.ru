<script src="https://cdn.jsdelivr.net/npm/maska@latest/dist/maska.js"></script>
<script src="{{ asset('assets/js/carousel.js') }}"></script>
<script src="{{ asset('assets/js/component.js') }}"></script>
<script src="{{ asset('assets/js/vivus.min.js') }}"></script>
<script src="{{ asset('assets/js/script.js') }}"></script>
<script src="{{ asset('assets/js/slides.js') }}"></script>

<script type="text/javascript">
	var token = document.head.querySelector('meta[name="csrf-token"]');
	window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;
</script>

<script type="text/javascript">
    $(document).ready(function() {
        let browser = $('input[name="browser"]');
        let value = navigator.userAgent;
        browser.val(value);
        $("#feedback_id").on('submit', function(event) {
            event.preventDefault();
            let form = $(this);
            let action = form.attr("action");
            let type = form.attr("method");
            let _token = $('input[name="_token"]').val();
            let fd = new FormData(form[0]);
            let $inputs = form.find("input, select, button, textarea");
            axios.post(action, fd, {
                  headers: {
                      'X-CSRF-TOKEN': _token,
                      'content-type': 'application/x-www-form-urlencoded',
                      'Authorization': 'Beared',
                  },
                }).then(res => {
	                if (res.status === 200) {
	                  vue.toggleWrapper();
	                  vue.toggleModalSuccessFeedback();
					  if(vue.toggleModalSuccessFeedback()) {
						$inputs.prop("disabled", false);
						$inputs.val("");
						$inputs.prop("checked",false);
						vue.valueFeedbackInput = '';
					  }
	                } 
            }).catch((error) => {
                $('#error').text('Ошибка: Поле "Имя" должен состоять из букв(кириллицы), Поле "Номер" должен быть полностью заполненным!');
                //console.log(error.response.data);
            });  
        });
        $(".modal__close").on('click', function(event) {
            $('#error').text("");			
			$('input[name="name"]').val("");
			$('input[name="phone"]').val("");
        });
    });     
</script>