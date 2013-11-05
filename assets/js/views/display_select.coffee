App.module "Views", (Views, App, Backbone, Marionette, $, _) ->
  class Views.DisplaySelect extends Marionette.Layout
    template: templates.display_select
    regions:
      'inline': '.inline'

    onShow: ->
      @inline.show new App.Views.InlineTemplate
        collection: @model.selectedNetworks()

    modelEvents:
      'change': ->
        @inline.show new App.Views.InlineTemplate
          collection: @model.selectedNetworks()
