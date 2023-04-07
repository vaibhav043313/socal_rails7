module ApplicationHelper
  def first_letter(word)
    word.capitalize.first
  end

  def fullName(user)
    "#{user.first_name} #{user.last_name}"
  end
end
