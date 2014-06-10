  
# config/initializers/simple_form_bootstrap.rb full
# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.wrappers :bootstrap, :tag => 'div', :class => 'form-group', :error_class => 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    #b.wrapper :tag => 'div', :class => 'controls' do |ba|
      b.use :input
      b.use :error, :wrap_with => { :tag => 'span', :class => 'bg-error' }
      b.use :hint,  :wrap_with => { :tag => 'p', :class => 'bg-warning' }
    #end
  end
 
  config.wrappers :prepend, :tag => 'div', :class => "control-group", :error_class => 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.wrapper :tag => 'div', :class => 'controls' do |input|
      input.wrapper :tag => 'div', :class => 'input-prepend' do |prepend|
        prepend.use :input
      end
      input.use :hint,  :wrap_with => { :tag => 'span', :class => 'bg-warning' }
      input.use :error, :wrap_with => { :tag => 'span', :class => 'bg-error' }
    end
  end
 
  config.wrappers :append, :tag => 'div', :class => "control-group", :error_class => 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.wrapper :tag => 'div', :class => 'controls' do |input|
      input.wrapper :tag => 'div', :class => 'input-append' do |append|
        append.use :input
      end
      input.use :hint,  :wrap_with => { :tag => 'span', :class => 'bg-warning' }
      input.use :error, :wrap_with => { :tag => 'span', :class => 'bg-error' }
    end
  end
 
  # Wrappers for forms and inputs using the Twitter Bootstrap toolkit.
  # Check the Bootstrap docs (http://twitter.github.com/bootstrap)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :bootstrap
 
  config.input_class = "form-control"
  inputs = %w[
  CollectionSelectInput
  DateTimeInput
  FileInput
  GroupedCollectionSelectInput
  NumericInput
  PasswordInput
  RangeInput
  StringInput
  TextInput
]
end