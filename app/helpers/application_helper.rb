module ApplicationHelper

  def active_if(section, action = nil)
    if match_controller(section, action)
      { class: 'active' }
    else
      { class: 'inactive' }
    end
  end

  def is_active_if(section, action = nil)
    'active' if match_controller(section, action)
  end

  def simple_form_horizontal(object, *args, &block)
    options = args.extract_options!
    simple_form_for(object, *(args << options.merge(html: { class: "form-horizontal #{object}" }, wrapper: :horizontal_form)), &block)
  end

  protected
  def match_controller(section, action)
    (section == controller_path) and (action.nil? or action == action_name)
  end


end
