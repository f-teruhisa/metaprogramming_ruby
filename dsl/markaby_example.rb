require 'markaby'

html = Markaby::Builder.new do
  head { title: 'わたしのすてきなホームページ' }
  body do
    h1 "私のホームページへようこそ！"
    b "私の趣味です"
    ul do
      li "ジャグリング"
      li "編み物"
      li "メタプログラミング"
    end
  end
end

