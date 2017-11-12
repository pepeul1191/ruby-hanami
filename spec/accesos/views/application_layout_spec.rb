require "spec_helper"

describe Accesos::Views::ApplicationLayout do
  let(:layout)   { Accesos::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/accesos/templates/application.html.erb') }

  it 'contains application name' do
    rendered.must_include('Accesos')
  end
end
