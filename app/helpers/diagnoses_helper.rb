module DiagnosesHelper
  def diagnosis_display_title(obj)
    title =
      if obj.respond_to?(:title) && obj.title.present?
        obj.title
      elsif obj.respond_to?(:result_title)
        obj.result_title
      else
        nil
      end

    return "診断結果" if title.blank? || title.match?(/\A\s*タイプ/i)
    title
  end
end
