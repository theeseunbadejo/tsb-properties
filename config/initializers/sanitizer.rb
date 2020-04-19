# require 'sanitize'

# Clean up an HTML fragment using Sanitize's permissive but safe Relaxed config.
# This also sanitizes any CSS in `<style>` elements or `style` attributes.
# Sanitize.fragment(html, Sanitize::Config::RELAXED)

# Clean up an HTML document using the Relaxed config.
# Sanitize.document(html, Sanitize::Config::RELAXED)

# Clean up a standalone CSS stylesheet using the Relaxed config.
# Sanitize::CSS.stylesheet(css, Sanitize::Config::RELAXED)

# Clean up some CSS properties using the Relaxed config.
# Sanitize::CSS.properties(css, Sanitize::Config::RELAXED)
