new Vue(
  el: '#artworks'
  data:
    artworks: []
    firstPage: true
    lastPage: false
    page: 1
    pages: 1
  mounted: ()->
    console.log 'ready!'
    that = this
    $.ajax
      url: '/artworks.json'
      success: (data)->
        that.artworks = data;
)
