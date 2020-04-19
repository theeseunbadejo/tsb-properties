class PropertyScrubber < Rails::Html::PermitScrubber

  def initialize
    super

    self.tags = %w[
      p
      a
      b
      i
      u
      table
      tbody
      tr
      td
      blockquote
      img
      h1
      h2
      h3
      ul
      li
      ol
      figure
      figcaption
    ]

  end

end