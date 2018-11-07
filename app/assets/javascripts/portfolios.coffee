# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#değişken tanımlama

ready = undefined
set_pos = undefined

# _portfolio_item partial dosyasındaki card-body html classı içindeki veriye ulaşır

set_pos = ->
	$('.card-body').each (i) ->
		$(this).attr 'data-pos', i + 1
		return
	return

#fonksiyon tanımlama html.sortable.js dosyasındaki sortable fonksiyonuna ulaşır
ready =  ->
	set_pos()
	$('.sort').sortable()
	$('.sort').sortable().bind 'sortupdate', (e,ui) ->
		updated_order = []
		set_pos()
		$('.card-body').each (i) ->
			updated_order.push
				id: $(this).data('id')
				position: i + 1
			return
		$.ajax
			type: 'PUT'
			url: '/portfolios/sort'
			data: order: updated_order
		return
		
	return

# "(document).ready " sayfa yüklenirken gelmesi için "ready" üstteki değişken adı
$(document).ready ready



