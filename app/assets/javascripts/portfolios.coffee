# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#değişken tanımlama

ready = undefined

#fonksiyon tanımlama html.sortable.js dosyasındaki sorfable fonksiyonuna ulaşır

ready =  ->
	$('.sort').sortable()
	return

# "(document).ready " sayfa yüklenirken gelmesi için "ready" üstteki değişken adı
$(document).ready ready

