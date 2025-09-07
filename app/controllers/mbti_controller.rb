class MbtiController < ApplicationController
  VALID_CODES = %w[
    INTJ INTP ENTJ ENTP INFJ INFP ENFJ ENFP
    ISTJ ISFJ ESTJ ESFJ ISTP ISFP ESTP ESFP
  ].freeze
  def index
    @codes = VALID_CODES
  end

  def show
    code = params[:code].to_s.upcase
    return redirect_to(mbti_index_path, alert: "MBTIタイプが不正です") unless VALID_CODES.include?(code)

    @code  = code
    @picks = MbtiPick.where(mbti_code: code).order(:rank, :id).limit(2)
  end
end
