Rails.application.config.generators do |g|
  g.stylesheets     false
  g.javascripts     false
  g.test_framework  :rspec, controller_specs: false, helper_specs: false, fixture: true, fixture_replacement: :factory_girl
end
