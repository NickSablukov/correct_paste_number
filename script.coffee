corrected_field = (element_id, maxlength) ->
	  input_field = $("##{element_id}")
	  field_value = input_field.val()
	  re = RegExp("[0-9]{#{maxlength}}", 'g')
	  field_value_correct = field_value.match(re)
	  input_field.attr('maxlength', maxlength)
	
	  input_field.val(field_value_correct or field_value.replace(/[^0-9]/g, ''))
	
@past_number = (event) ->
	  element_id = event.target.id
	  input_field = $("##{element_id}")
	  maxlength = input_field.attr('maxlength')
	  input_field.removeAttr('maxlength')
	  setTimeout(
	    -> corrected_field(element_id, maxlength)
	    200
	  )
	
	$(window).load () ->
	  # поля на которые надо навесить функцию
	  id_list = ['id_field', 'id_field2', 'id_field3']
	  for id in id_list
      if $("##{id}").attr('maxlength')
	      field = $("##{id}")
	      field.attr('onpaste', 'past_number(event)')
