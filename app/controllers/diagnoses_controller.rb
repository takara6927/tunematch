class DiagnosesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :create]
QUESTIONS = [
  { text: "静かな場所で過ごす休日の方が好きですか？", axis: :mood, direction: :calm },
  { text: "人混みやにぎやかな場所を避けたいと思いますか？", axis: :mood, direction: :calm },
  { text: "休日は予定を詰め込んでアクティブに動きたいですか？", axis: :mood, direction: :active },
  { text: "新しい場所やアクティビティに挑戦するのが好きですか？", axis: :mood, direction: :active },
  { text: "家よりも外で過ごす時間の方が多いですか？", axis: :mood, direction: :active },

  { text: "落ち着いた雰囲気のカフェで過ごすのが好きですか？", axis: :vibe, direction: :chill },
  { text: "家でまったり音楽を聴く時間をよく取りますか？", axis: :vibe, direction: :chill },
  { text: "大人数でワイワイ盛り上がるイベントに行くのが好きですか？", axis: :vibe, direction: :party },
  { text: "夜遅くまで人と騒ぐのが楽しいと感じますか？", axis: :vibe, direction: :party },
  { text: "フェスやクラブなどのにぎやかな場所によく行きますか？", axis: :vibe, direction: :party },

  { text: "歌詞の意味をじっくり味わいながら音楽を聴きますか？", axis: :lyrics, direction: :meaning },
  { text: "音楽を聴くとき、物語性やメッセージ性を重視しますか？", axis: :lyrics, direction: :meaning },
  { text: "歌詞よりもメロディやリズムを重視して音楽を選びますか？", axis: :lyrics, direction: :sound },
  { text: "歌詞が分からなくても曲の雰囲気で楽しめますか？", axis: :lyrics, direction: :sound },
  { text: "歌詞がない音楽（ピアノやサウンドトラックなど）をよく聴きますか？", axis: :lyrics, direction: :sound },

  { text: "明るくキャッチーな曲調の音楽をよく聴きますか？", axis: :genre, direction: :pop },
  { text: "新しく流行った曲やアーティストをチェックすることが多いですか？", axis: :genre, direction: :pop },
  { text: "ギターやドラムが前面に出た曲を聴くとワクワクしますか？", axis: :genre, direction: :rock },
  { text: "ライブハウスやロックフェスに行ったことがありますか？", axis: :genre, direction: :rock },
  { text: "エネルギッシュで迫力のある曲調に惹かれることが多いですか？", axis: :genre, direction: :rock }
  ].freeze

  def start; end

  def questions
    @questions = QUESTIONS
  end
  
  def result
    user_answers = params[:answers] || {}

    scores = {
      mood:   { calm: 0, active: 0 },
      vibe:   { chill: 0, party: 0 },
      lyrics: { meaning: 0, sound: 0 },
      genre:  { pop: 0, rock: 0 }
    }

    QUESTIONS.each_with_index do |q, i|
      answer = user_answers[i.to_s]
      axis = q[:axis]
      direction = q[:direction]

      if answer == "yes"
        scores[axis][direction] += 1
      else
        opposite = {
        calm: :active,  active: :calm,
  chill: :party,  party: :chill,
  meaning: :sound, sound: :meaning,
  pop: :rock,     rock: :pop
        }[direction]

        scores[axis][opposite] += 1
      end
    end

    type = ""
    type += scores[:mood][:calm]    > scores[:mood][:active]   ? "C" : "A"
    type += scores[:vibe][:chill]   > scores[:vibe][:party]    ? "C" : "P"
    type += scores[:lyrics][:meaning] > scores[:lyrics][:sound] ? "L" : "S"
    type += scores[:genre][:pop]    > scores[:genre][:rock]    ? "P" : "R"

    @type = type
    @result = Result.find_by(code: @type)
if  user_signed_in?  
  tracks = [
    { title: @result.song1, artist: @result.artist1, youtube_url: @result.youtube_url1 },
    { title: @result.song2, artist: @result.artist2, youtube_url: @result.youtube_url2 }
  ]

  Diagnosis.create!(
    user: current_user,
    result_title:   "診断結果",
    result_summary: @result.description,
    tracks: tracks
  )
end
    puts "type: #{@type}, result: #{@result.inspect}"  
    render :result
  
end
def index
    @diagnoses = current_user.diagnoses.order(created_at: :desc)
  end

def show
  @diagnosis = current_user.diagnoses.find(params[:id])  # ← これに統一
end


  def create
  end
end
