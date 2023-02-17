Gem::Specification.new do |s|
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.required_ruby_version = '>= 2.6'

  s.name              = 'gollum'
  s.version           = '5.3.0b'
  s.license           = 'MIT'

  s.summary     = 'A simple, Git-powered wiki.'
  s.description = 'A simple, Git-powered wiki with a sweet API and local frontend.'

  s.authors  = ['Tom Preston-Werner', 'Rick Olson']
  s.email    = 'tom@github.com'
  s.homepage = 'http://github.com/gollum/gollum'

  s.require_paths = %w[lib]

  s.executables = ['gollum', 'gollum-migrate-tags']

  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_dependency 'rdoc', '~> 6'
  s.add_dependency 'gollum-lib', '~> 5.1'
  s.add_dependency 'kramdown', '~> 2.3'
  s.add_dependency 'kramdown-parser-gfm', '~> 1.1.0'
  s.add_dependency 'sinatra', '~> 3.0'
  s.add_dependency 'sinatra-contrib', '~> 3.0'
  s.add_dependency 'mustache-sinatra', '>= 1.0.1', '< 2'
  s.add_dependency 'useragent', '~> 0.16.2'
  s.add_dependency 'gemojione', '~> 4.1'
  s.add_dependency 'octicons', '~> 12.0'
  s.add_dependency 'sprockets', '~> 4.1'
  s.add_dependency 'sprockets-helpers', '~> 1.2'
  s.add_dependency 'rss', '~> 0.2.9'
  s.add_dependency 'therubyrhino', '~> 2.1.0'
  s.add_dependency 'webrick', '~> 1.7'
  s.add_dependency 'i18n', '~> 1.8'

  s.add_development_dependency 'rack-test', '~> 0.6.3'
  s.add_development_dependency 'shoulda', '~> 3.6.0'
  s.add_development_dependency 'minitest-reporters', '~> 1.3.6'
  s.add_development_dependency 'mocha', '~> 1.8.0'
  s.add_development_dependency 'test-unit', '~> 3.3.0'
  s.add_development_dependency 'terser', '~> 1.1'

  # = MANIFEST =
  s.files = %w[
    CONTRIBUTING.md
    Dockerfile
    Gemfile
    HISTORY.md
    LATEST_CHANGES.md
    LICENSE
    README.md
    Rakefile
    bin/gollum
    bin/gollum-migrate-tags
    config.rb
    config.ru
    contrib/automation/gollum-post
    contrib/openrc/conf.d/gollum
    contrib/openrc/init.d/gollum
    contrib/systemd/gollum@.service
    contrib/sysv-debian/init.d/gollum
    docker-run.sh
    gollum.gemspec
    lib/gollum.rb
    lib/gollum/app.rb
    lib/gollum/assets.rb
    lib/gollum/helpers.rb
    lib/gollum/locales/en.yml
    lib/gollum/public/assets/.sprockets-manifest-bb534f309e03d0a51d6742a1593d6ffa.json
    lib/gollum/public/assets/app-74e2de7db12fd4a264a8ccb0508dd70c969d791870491de4382f33435a3dbb08.js
    lib/gollum/public/assets/app-74e2de7db12fd4a264a8ccb0508dd70c969d791870491de4382f33435a3dbb08.js.gz
    lib/gollum/public/assets/app-bc900fb468c75f0bd31baa73082f0138a074bd7919169797df1344dbe72822f1.css
    lib/gollum/public/assets/app-bc900fb468c75f0bd31baa73082f0138a074bd7919169797df1344dbe72822f1.css.gz
    lib/gollum/public/assets/criticmarkup-7b66f7a53b854bc9e4168be5b4725ca38e2bc6e9c41d5c050a9f60d9a94cb405.css
    lib/gollum/public/assets/criticmarkup-7b66f7a53b854bc9e4168be5b4725ca38e2bc6e9c41d5c050a9f60d9a94cb405.css.gz
    lib/gollum/public/assets/editor-e612b4402622b0aba38fd00b0ba3ebbec1fbd7a3dfb5f3a829d1d470bb1c5905.js
    lib/gollum/public/assets/editor-e612b4402622b0aba38fd00b0ba3ebbec1fbd7a3dfb5f3a829d1d470bb1c5905.js.gz
    lib/gollum/public/assets/gollum.mermaid-fb301dc96915c50975224b2c7fbaf828bb4668958ecf4d0c6e5357445fcc9523.js
    lib/gollum/public/assets/gollum.mermaid-fb301dc96915c50975224b2c7fbaf828bb4668958ecf4d0c6e5357445fcc9523.js.gz
    lib/gollum/public/assets/print-512498c368be0d3fb1ba105dfa84289ae48380ec9fcbef948bd4e23b0b095bfb.css
    lib/gollum/public/assets/print-512498c368be0d3fb1ba105dfa84289ae48380ec9fcbef948bd4e23b0b095bfb.css.gz
    lib/gollum/public/gollum/javascript/HOWTO_UPDATE_MATHJAX.md
    lib/gollum/public/gollum/javascript/MathJax/a11y/assistive-mml.js
    lib/gollum/public/gollum/javascript/MathJax/a11y/complexity.js
    lib/gollum/public/gollum/javascript/MathJax/a11y/explorer.js
    lib/gollum/public/gollum/javascript/MathJax/a11y/semantic-enrich.js
    lib/gollum/public/gollum/javascript/MathJax/a11y/sre.js
    lib/gollum/public/gollum/javascript/MathJax/adaptors/liteDOM.js
    lib/gollum/public/gollum/javascript/MathJax/core.js
    lib/gollum/public/gollum/javascript/MathJax/input/asciimath.js
    lib/gollum/public/gollum/javascript/MathJax/input/mml.js
    lib/gollum/public/gollum/javascript/MathJax/input/mml/entities.js
    lib/gollum/public/gollum/javascript/MathJax/input/mml/extensions/mml3.js
    lib/gollum/public/gollum/javascript/MathJax/input/mml/extensions/mml3.sef.json
    lib/gollum/public/gollum/javascript/MathJax/input/tex-base.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex-full.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/action.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/all-packages.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/ams.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/amscd.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/autoload.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/bbox.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/boldsymbol.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/braket.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/bussproofs.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/cancel.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/cases.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/centernot.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/color.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/colortbl.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/colorv2.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/configmacros.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/empheq.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/enclose.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/extpfeil.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/gensymb.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/html.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/mathtools.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/mhchem.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/newcommand.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/noerrors.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/noundefined.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/physics.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/require.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/setoptions.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/tagformat.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/textcomp.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/textmacros.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/unicode.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/upgreek.js
    lib/gollum/public/gollum/javascript/MathJax/input/tex/extensions/verb.js
    lib/gollum/public/gollum/javascript/MathJax/latest.js
    lib/gollum/public/gollum/javascript/MathJax/loader.js
    lib/gollum/public/gollum/javascript/MathJax/node-main.js
    lib/gollum/public/gollum/javascript/MathJax/output/chtml.js
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/tex.js
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_AMS-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Calligraphic-Bold.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Calligraphic-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Fraktur-Bold.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Fraktur-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Main-Bold.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Main-Italic.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Main-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Math-BoldItalic.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Math-Italic.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Math-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_SansSerif-Bold.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_SansSerif-Italic.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_SansSerif-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Script-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Size1-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Size2-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Size3-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Size4-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Typewriter-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Vector-Bold.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Vector-Regular.woff
    lib/gollum/public/gollum/javascript/MathJax/output/chtml/fonts/woff-v2/MathJax_Zero.woff
    lib/gollum/public/gollum/javascript/MathJax/output/svg.js
    lib/gollum/public/gollum/javascript/MathJax/output/svg/fonts/tex.js
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/base.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/ca.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/da.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/de.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/en.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/es.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/fr.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/hi.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/it.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/nb.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/nemeth.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/nn.json
    lib/gollum/public/gollum/javascript/MathJax/sre/mathmaps/sv.json
    lib/gollum/public/gollum/javascript/MathJax/startup.js
    lib/gollum/public/gollum/javascript/MathJax/tex-chtml-full-speech.js
    lib/gollum/public/gollum/javascript/MathJax/tex-mml-chtml.js
    lib/gollum/public/gollum/javascript/MathJax/ui/lazy.js
    lib/gollum/public/gollum/javascript/MathJax/ui/menu.js
    lib/gollum/public/gollum/javascript/MathJax/ui/safe.js
    lib/gollum/public/gollum/javascript/app.js
    lib/gollum/public/gollum/javascript/clipboard.min.js
    lib/gollum/public/gollum/javascript/date.min.js
    lib/gollum/public/gollum/javascript/editor.js
    lib/gollum/public/gollum/javascript/editor/gollum.editor.js
    lib/gollum/public/gollum/javascript/editor/langs/asciidoc.js
    lib/gollum/public/gollum/javascript/editor/langs/bib.js
    lib/gollum/public/gollum/javascript/editor/langs/creole.js
    lib/gollum/public/gollum/javascript/editor/langs/default.js
    lib/gollum/public/gollum/javascript/editor/langs/markdown.js
    lib/gollum/public/gollum/javascript/editor/langs/mediawiki.js
    lib/gollum/public/gollum/javascript/editor/langs/org.js
    lib/gollum/public/gollum/javascript/editor/langs/plaintext.js
    lib/gollum/public/gollum/javascript/editor/langs/pod.js
    lib/gollum/public/gollum/javascript/editor/langs/rdoc.js
    lib/gollum/public/gollum/javascript/editor/langs/rest.js
    lib/gollum/public/gollum/javascript/editor/langs/textile.js
    lib/gollum/public/gollum/javascript/editor/modes.js.erb
    lib/gollum/public/gollum/javascript/editor/sections.js
    lib/gollum/public/gollum/javascript/gollum.dialog.js
    lib/gollum/public/gollum/javascript/gollum.js.erb
    lib/gollum/public/gollum/javascript/gollum.mermaid.js
    lib/gollum/public/gollum/javascript/gollum.placeholder.js
    lib/gollum/public/gollum/javascript/identicon.js
    lib/gollum/public/gollum/javascript/jquery-1.7.2.min.js
    lib/gollum/public/gollum/javascript/jquery.resize.js
    lib/gollum/public/gollum/javascript/polyfills.js
    lib/gollum/public/gollum/stylesheets/_base.scss
    lib/gollum/public/gollum/stylesheets/_breakpoint.scss
    lib/gollum/public/gollum/stylesheets/_features.scss
    lib/gollum/public/gollum/stylesheets/_spinners.scss
    lib/gollum/public/gollum/stylesheets/app.scss
    lib/gollum/public/gollum/stylesheets/criticmarkup.scss
    lib/gollum/public/gollum/stylesheets/dialog.scss
    lib/gollum/public/gollum/stylesheets/editor.scss
    lib/gollum/public/gollum/stylesheets/emoji.scss
    lib/gollum/public/gollum/stylesheets/highlights.scss
    lib/gollum/public/gollum/stylesheets/print.scss
    lib/gollum/public/gollum/stylesheets/spinner.scss
    lib/gollum/public/gollum/stylesheets/tables.scss
    lib/gollum/public/gollum/stylesheets/template.scss.erb
    lib/gollum/public/gollum/stylesheets/wiki_content.scss
    lib/gollum/templates/commit.mustache
    lib/gollum/templates/compare.mustache
    lib/gollum/templates/create.mustache
    lib/gollum/templates/edit.mustache
    lib/gollum/templates/editor.mustache
    lib/gollum/templates/error.mustache
    lib/gollum/templates/history.mustache
    lib/gollum/templates/history_authors/gravatar.mustache
    lib/gollum/templates/history_authors/identicon.mustache
    lib/gollum/templates/history_authors/none.mustache
    lib/gollum/templates/latest_changes.mustache
    lib/gollum/templates/layout.mustache
    lib/gollum/templates/mobilenav.mustache
    lib/gollum/templates/navbar.mustache
    lib/gollum/templates/overview.mustache
    lib/gollum/templates/page.mustache
    lib/gollum/templates/pagination.mustache
    lib/gollum/templates/search.mustache
    lib/gollum/templates/searchbar.mustache
    lib/gollum/templates/wiki_content.mustache
    lib/gollum/uri_encode_component.rb
    lib/gollum/views/commit.rb
    lib/gollum/views/compare.rb
    lib/gollum/views/create.rb
    lib/gollum/views/edit.rb
    lib/gollum/views/editable.rb
    lib/gollum/views/error.rb
    lib/gollum/views/has_math.rb
    lib/gollum/views/has_page.rb
    lib/gollum/views/has_user_icons.rb
    lib/gollum/views/helpers.rb
    lib/gollum/views/helpers/locale_helpers.rb
    lib/gollum/views/history.rb
    lib/gollum/views/latest_changes.rb
    lib/gollum/views/layout.rb
    lib/gollum/views/overview.rb
    lib/gollum/views/page.rb
    lib/gollum/views/pagination.rb
    lib/gollum/views/rss.rb
    lib/gollum/views/search.rb
    lib/gollum/views/template_cascade.rb
    licenses/licenses.txt
    package.json
    yarn.lock
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
