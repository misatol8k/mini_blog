module MiniBlogsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_mini_blogs_path
    elsif action_name == 'edit'
      mini_blog_path
    end
  end
end
