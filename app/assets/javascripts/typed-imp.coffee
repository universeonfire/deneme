ready = ->
	Typed.new '.element',
		strings: [
			'Bir şeyler yapmaya çalışırken bir şeyler yapmak mümkün müdür.'
		]
		typeSpeed: 0
	return

$(document).ready ready
$(document).on 'turbolinks:load' , ready