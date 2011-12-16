# encoding: utf-8
module Admin::UsersHelper
  def url2name(url)
    names = {
      'active' => t('активни потребители'),
      'suspended' => t('временно спрени')
    }
    names[url]
  end

  # format time ago
  def f_ta(time)
    if time.nil?
      t("никога")
    else
      # time_ago_in_words time
      t("преди ") + distance_of_time_in_words(Time.now, time)
    end
  end

  def class_by_state(state)
    "class=user_#{state}" if state
  end
end

