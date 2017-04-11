vArtworks = new Vue(
  el: '#artworks'
  data:
    artworks: []
    page: 1
    pages: 1
    firstPage: true
    lastPage: false
  mounted: ()->
    this.loadData()  
  methods:
    loadData: ()->
      that = this
      $.ajax
        url: '/artworks.json'
        data:
          page: this.page
        success: (data)->
          that.artworks = JSON.parse(data.artworks);
          that.page = data.page
          that.pages = data.pages
          that.firstPage = that.page == 1
          that.lastPage = that.page == that.pages
    nextPage: ()->
      if this.page < this.pages
        this.page++
        this.loadData()
    previousPage: ()->
      if this.page > 1
        this.page--
        this.loadData()
    togglePublishment: (artwork)->
      $.ajax
        url: '/artworks/' + artwork.id + '/toggle_publishment'
        success: (data)->
          artwork.published = data.published
)
