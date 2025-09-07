[
  "チル","エモい","切ない","元気出る","爽やか","夜に聴きたい",
  "作業用","勉強用","ドライブ","通勤通学","雨の日",
  "J-POP","邦ロック","シティポップ","ヒップホップ","R&B","K-POP","洋楽",
  "バラード","アップテンポ","ミドル",
  "春","夏","秋","冬",
  "アニメ主題歌","ドラマ主題歌"
].each { |n| Tag.find_or_create_by!(name: n) }

Result.create!([
{
  code: "CCLP",
  artist1: "あいみょん",
  song1: "恋をしたから",
  youtube_url1: "https://www.youtube.com/watch?v=mDj6FQgOY8E",

  artist2: "緑黄色社会",
  song2: "Shout Baby",
  youtube_url2: "https://www.youtube.com/watch?v=Ww8oxgqDQSs",

  description: "あなたは落ち着いた気分のときに、歌詞にじっくり耳を傾けたいタイプ。温かくて感情に寄り添うポップスがぴったりです。"
},
{
  code: "CCLR",
  artist1: "Official髭男dism",
  song1: "フィラメント",
  youtube_url1: "https://www.youtube.com/watch?v=-jMElGn4ak4",

  artist2: "King Gnu",
  song2: "白日",
  youtube_url2: "https://www.youtube.com/watch?v=ony539T074w",

  description: "あなたは落ち着いた気分で、深い歌詞をじっくり味わいたいロック志向のタイプです。メッセージ性のある楽曲や感情のこもったバラードに惹かれる傾向があります。"
},
{
  code: "CCSP",
  artist1: "iri",
  song1: "Watashi",
  youtube_url1: "https://www.youtube.com/watch?v=iA8HkdN6IhA",

  artist2: "Vaundy",
  song2: "裸の勇者",
  youtube_url2: "https://www.youtube.com/watch?v=FT0GKCuSaW0",

  description: "あなたは穏やかな気分で、心地よいサウンドやリズムに癒されたいタイプです。歌詞よりも雰囲気やグルーヴ感を大切にし、自然と体が揺れるようなポップな楽曲に惹かれます。"
},
{
  code: "CCSR",
  artist1: "King Gnu",
  song1: "The hole",
  youtube_url1: "https://www.youtube.com/watch?v=BjI0HIn46l0",

  artist2: "Aimer",
  song2: "us",
  youtube_url2: "https://www.youtube.com/watch?v=IpLzLIAyX-A",

  description: "あなたは静けさの中にある深みや余韻を大切にするタイプです。落ち着いたサウンドでありながら、ロック特有のエモーショナルな響きや重厚感のある演奏に惹かれます。感覚的に音楽を楽しむのが特徴です。"
},
{
  code: "CPLP",
  artist1: "Perfume",
  song1: "透明人間",
  youtube_url1: "https://www.youtube.com/watch?v=hfJm4vWhqvU",

  artist2: "iri",
  song2: "Sparkle",
  youtube_url2: "https://www.youtube.com/watch?v=s2lrXYmpi7w",

  description: "あなたは静かな空気感を持ちながらも、言葉に重みがあるポップミュージックを好むタイプです。リリックに込められたメッセージや感情に耳を傾けながら、落ち着いたパーティーチューンで気分を上げるのが好きです。"
},
{
  code: "CPLR",
  artist1: "サカナクション",
  song1: "ネイティブダンサー",
  youtube_url1: "https://www.youtube.com/watch?v=IiqfKF9BlcI",

  artist2: "東京事変",
  song2: "絶体絶命",
  youtube_url2: "https://www.youtube.com/watch?v=eCQZevUHlj8",

  description: "あなたは落ち着いたムードの中でも、歌詞に深みのあるロックサウンドを求めるタイプです。派手すぎないけれど芯のあるリリックとグルーヴが、あなたの感性にぴったり合います。"
},
{
  code: "CPSP",
  artist1: "YOASOBI",
  song1: "ハルカ",
  youtube_url1: "https://www.youtube.com/watch?v=vd3IlOjSUGQ",

  artist2: "フレデリック",
  song2: "オドループ",
  youtube_url2: "https://www.youtube.com/watch?v=PCp2iXA1uLE",

  description: "あなたは落ち着いた気分の中にも、耳に残るサウンドやリズムを大切にするタイプです。ポップでノリやすく、聴いているだけで心地よくなるような楽曲を好みます。"
},
{
  code: "CPSR",
  artist1: "King Gnu",
  song1: "Sorrows",
  youtube_url1: "https://www.youtube.com/watch?v=UbcFMUn_ldY",

  artist2: "RADWIMPS",
  song2: "パーフェクトベイビー",
  youtube_url2: "https://www.youtube.com/watch?v=AVx73xdUY9k",

  description: "あなたは落ち着いた雰囲気の中でも、力強く印象に残るロックサウンドを好むタイプです。リズム感や音の厚みがありながら、聴くたびに新しい発見があるような楽曲がぴったりです。"
},
{
  code: "ACLP",
  artist1: "あいみょん",
  song1: "生きていたんだよな",
  youtube_url1: "https://www.youtube.com/watch?v=EEMwA8KZAqg",

  artist2: "Mrs. GREEN APPLE",
  song2: "StaRt",
  youtube_url2: "https://www.youtube.com/watch?v=OTUtF7ZxRN8",

  description: "あなたは行動的な一方で、歌詞に込められた物語や感情をじっくり味わうタイプです。ポップで聴きやすくも、心に刺さるような言葉を持つ楽曲を求めています。"
},
{
  code: "ACLR",
  artist1: "クリープハイプ",
  song1: "栞",
  youtube_url1: "https://www.youtube.com/watch?v=j4XsCJHfplg",

  artist2: "My Hair is Bad",
  song2: "真赤",
  youtube_url2: "https://www.youtube.com/watch?v=0M3HoC2uGhM",

  description: "あなたはエネルギッシュに動きながらも、歌詞に深く共感しやすいタイプです。ロックなサウンドに乗せて、リアルで鋭い言葉が心に刺さる楽曲がよく似合います。"
},
{
  code: "ACSP",
  artist1: "iri",
  song1: "Wonderland",
  youtube_url1: "https://www.youtube.com/watch?v=3WlOZTy072k",

  artist2: "Vaundy",
  song2: "不可幸力",
  youtube_url2: "https://www.youtube.com/watch?v=Gbz2C2gQREI",

  description: "あなたはアクティブながらも落ち着いた雰囲気を好み、メロディやサウンドの心地よさに惹かれるタイプです。ポップでスタイリッシュなサウンドが、あなたの気分にぴったりです。"
},
{
  code: "ACSR",
  artist1: "King Gnu",
  song1: "Vinyl",
  youtube_url1: "https://www.youtube.com/watch?v=RLAw8Ct9k48",

  artist2: "go!go!vanillas",
  song2: "平成ペイン",
  youtube_url2: "https://www.youtube.com/watch?v=JsnxgOXXwhA",

  description: "あなたは行動的でありながら、音の質やムードにもこだわりを持つタイプです。ロックテイストの中に洗練されたサウンドが光る楽曲が、あなたの感性を刺激します。"
},
{
  code: "APLP",
  artist1: "Perfume",
  song1: "FLASH",
  youtube_url1: "https://www.youtube.com/watch?v=q6T0wOMsNrI",

  artist2: "YOASOBI",
  song2: "ミスター",
  youtube_url2: "https://www.youtube.com/watch?v=2-c0DFt6vK4",

  description: "あなたは明るくエネルギッシュで、場を盛り上げるのが得意なタイプ。キャッチーなメロディと意味深い歌詞のポップソングは、あなたの好奇心と表現力を刺激します。"
},
{
  code: "APLR",
  artist1: "ONE OK ROCK",
  song1: "C.h.a.o.s.m.y.t.h.",
  youtube_url1: "https://www.youtube.com/watch?v=C-xF2MAFw5s",

  artist2: "Mrs. GREEN APPLE",
  song2: "インフェルノ",
  youtube_url2: "https://www.youtube.com/watch?v=wfCcs0vLysk",

  description: "あなたは情熱的で感情豊か。仲間と盛り上がる時間も大切にしつつ、歌詞の世界観にも深く共感できるタイプです。エネルギッシュなロックナンバーで心を震わせてください。"
},
{
  code: "APSP",
  artist1: "三浦大知",
  song1: "EXCITE",
  youtube_url1: "https://www.youtube.com/watch?v=74WAj-990_A",

  artist2: "iri",
  song2: "Wonderland",
  youtube_url2: "https://www.youtube.com/watch?v=3WlOZTy072k",

  description: "あなたはノリが良くて感覚派。意味よりもビートやサウンドの心地よさを重視するタイプです。ポップでありながら踊れるような曲が、あなたのテンションを上げてくれます！"
},
{
  code: "APSR",
  artist1: "ASIAN KUNG-FU GENERATION",
  song1: "ブラッドサーキュレーター",
  youtube_url1: "https://www.youtube.com/watch?v=o8PzTHB4ov0",

  artist2: "UVERworld",
  song2: "ナノ・セカンド",
  youtube_url2: "https://www.youtube.com/watch?v=EBwx7GBy2oM",

  description: "あなたは直感と勢いで生きる熱いタイプ。細かいことよりも、その瞬間のグルーヴやエネルギーが大事。音でアガるロックが、あなたの毎日に刺激を与えてくれます！"
}
])

MbtiPick.delete_all

picks = [
  # INTJ
  {mbti_code:"INTJ",rank:1,artist:"Aimer",title:"STAND-ALONE",youtube_url:"https://www.youtube.com/watch?v=wVMPqFb5Iy8",reason:"静かな力強さと深い世界観"},
  {mbti_code:"INTJ",rank:2,artist:"IU",title:"eight (Prod.&Feat. SUGA of BTS)",youtube_url:"https://www.youtube.com/watch?v=TgOu00Mf3kI",reason:"繊細で緻密な感情描写"},

  # INTP
  {mbti_code:"INTP",rank:1,artist:"King Gnu",title:"傘",youtube_url:"https://www.youtube.com/watch?v=g4_nRpHotMo",reason:"複雑なコード進行と独特の歌詞"},
  {mbti_code:"INTP",rank:2,artist:"Coldplay",title:"Midnight",youtube_url:"https://www.youtube.com/watch?v=1PvBc2TOpE4",reason:"実験的で静かな没入感"},

  # ENTJ
  {mbti_code:"ENTJ",rank:1,artist:"ONE OK ROCK",title:"Mighty Long Fall",youtube_url:"https://www.youtube.com/watch?v=UjZqcDYbvAE",reason:"力強く戦略的な展開"},
  {mbti_code:"ENTJ",rank:2,artist:"BLACKPINK",title:"Don't Know What To Do",youtube_url:"https://www.youtube.com/watch?v=dyRsYk0LyA8",reason:"ダイナミックかつ洗練された構成"},

  # ENTP
  {mbti_code:"ENTP",rank:1,artist:"One OK Rock",title:"We are",youtube_url:"https://www.youtube.com/watch?v=CRLLWNIqb8w",reason:"エネルギッシュで情熱的なサウンド"},
  {mbti_code:"ENTP",rank:2,artist:"Dua Lipa",title:"Levitating",youtube_url:"https://www.youtube.com/watch?v=TUVcZfQe-Kw",reason:"ポップでフットワークの軽いビート"},

  # INFJ
  {mbti_code:"INFJ",rank:1,artist:"宇多田ヒカル",title:"真夏の通り雨",youtube_url:"https://www.youtube.com/watch?v=f_M3V4C8nWY",reason:"深い感情の流れと情緒"},
  {mbti_code:"INFJ",rank:2,artist:"BTS",title:"Spring Day",youtube_url:"https://www.youtube.com/watch?v=xEeFrLSkMm8",reason:"叙情的で心を打つメロディ"},

  # INFP
  {mbti_code:"INFP",rank:1,artist:"ヨルシカ",title:"ただ君に晴れ",youtube_url:"https://www.youtube.com/watch?v=-VKIqrvVOpo",reason:"透明感と情感が同居する世界観"},
  {mbti_code:"INFP",rank:2,artist:"Lorde",title:"Supercut",youtube_url:"https://www.youtube.com/watch?v=4bNZK-zgmUc",reason:"切ない回想を疾走感で包む"},

  # ENFJ
  {mbti_code:"ENFJ",rank:1,artist:"Official髭男dism",title:"フィラメント",youtube_url:"https://www.youtube.com/watch?v=-jMElGn4ak4",reason:"包容力と温かみのあるメロディ"},
  {mbti_code:"ENFJ",rank:2,artist:"SEVENTEEN",title:"Darl+ing",youtube_url:"https://www.youtube.com/watch?v=bTtNV6hgDno",reason:"優しく寄り添う歌詞と構成"},

  # ENFP
  {mbti_code:"ENFP",rank:1,artist:"あいみょん",title:"マリーゴールド",youtube_url:"https://www.youtube.com/watch?v=0xSiBpUdW4E",reason:"明るさと情熱を併せ持つメロディ"},
  {mbti_code:"ENFP",rank:2,artist:"TWICE",title:"Feel Special",youtube_url:"https://www.youtube.com/watch?v=3ymwOvzhwHs",reason:"キラキラとした自己肯定感"},

  # ISTJ
  {mbti_code:"ISTJ",rank:1,artist:"サカナクション",title:"夜の踊り子",youtube_url:"https://www.youtube.com/watch?v=2I25AFSBm2g",reason:"堅実な構成と洗練されたビート"},
  {mbti_code:"ISTJ",rank:2,artist:"Ed Sheeran",title:"Photograph",youtube_url:"https://www.youtube.com/watch?v=nSDgHBxUbVQ",reason:"温かみのあるメロディ"},

  # ISFJ
  {mbti_code:"ISFJ",rank:1,artist:"MISIA",title:"Everything",youtube_url:"https://www.youtube.com/watch?v=aHIR33pOUv0",reason:"包み込むような愛情表現"},
  {mbti_code:"ISFJ",rank:2,artist:"Kep1er",title:"WA DA DA",youtube_url:"https://www.youtube.com/watch?v=n0j5NPptyM0",reason:"元気で明るいエネルギー"},

  # ESTJ
  {mbti_code:"ESTJ",rank:1,artist:"UVERworld",title:"CORE PRIDE",youtube_url:"https://www.youtube.com/watch?v=UjPcAeF9-zc",reason:"リーダーシップと推進力"},
  {mbti_code:"ESTJ",rank:2,artist:"ITZY",title:"WANNABE",youtube_url:"https://www.youtube.com/watch?v=fE2h3lGlOsk",reason:"自己主張とパワー"},

  # ESFJ
  {mbti_code:"ESFJ",rank:1,artist:"スピッツ",title:"楓",youtube_url:"https://www.youtube.com/watch?v=YapsFDcGe_s",reason:"優しさと懐かしさが響く"},
  {mbti_code:"ESFJ",rank:2,artist:"Taylor Swift",title:"Daylight",youtube_url:"https://www.youtube.com/watch?v=u9raS7-NisU",reason:"温かな幸福感"},

  # ISTP
  {mbti_code:"ISTP",rank:1,artist:"凛として時雨",title:"abnormalize",youtube_url:"https://www.youtube.com/watch?v=DOKM9QWJG3g",reason:"スピード感と鋭さ"},
  {mbti_code:"ISTP",rank:2,artist:"The Neighbourhood",title:"R.I.P. 2 My Youth",youtube_url:"https://www.youtube.com/watch?v=vKH-rcO6PA8",reason:"クールで刹那的"},

  # ISFP
  {mbti_code:"ISFP",rank:1,artist:"藤井風",title:"きらり",youtube_url:"https://www.youtube.com/watch?v=TcLLpZBWsck",reason:"自然体と軽やかさ"},
  {mbti_code:"ISFP",rank:2,artist:"Billie Eilish",title:"my future",youtube_url:"https://www.youtube.com/watch?v=Dm9Zf1WYQ_A",reason:"静かで未来志向のメッセージ"},

  # ESTP
  {mbti_code:"ESTP",rank:1,artist:"MAN WITH A MISSION",title:"Raise your flag",youtube_url:"https://www.youtube.com/watch?v=PiQpGzYMVos",reason:"勢いと行動力"},
  {mbti_code:"ESTP",rank:2,artist:"Stray Kids",title:"Back Door",youtube_url:"https://www.youtube.com/watch?v=X-uJtV8ScYk",reason:"アグレッシブで斬新"},

  # ESFP
  {mbti_code:"ESFP",rank:1,artist:"SEKAI NO OWARI",title:"RPG",youtube_url:"https://www.youtube.com/watch?v=Mi9uNu35Gmk",reason:"ポップで楽しい冒険感"},
  {mbti_code:"ESFP",rank:2,artist:"Ariana Grande",title:"No Tears Left To Cry",youtube_url:"https://www.youtube.com/watch?v=ffxKSjUwKdU",reason:"明るく前進するエネルギー"},
]

MbtiPick.insert_all!(picks)
puts "MBTI Picks seeded: #{MbtiPick.count}"
