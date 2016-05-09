# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".brand_link").click ->
    $(".brand_link").removeClass("active")
    $this = $(this)
    $this.addClass("active")
    $("#brand_link_iframe").attr("src", $this.data("url"))
