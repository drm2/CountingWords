require_relative 'word_counter'

describe WordCounter do
  let(:counter) { WordCounter.new }
  let(:example_parsed) {
    [["the", 2], ["and", 1], ["dog", 1], ["testing", 1], ["a", 1], ["hyphenated-word", 1], ["cat", 1], ["here's", 1], ["one", 1], ["with", 1], ["an", 1], ["apostrophe", 1]]
  }
  let(:speech_parsed) {
    [["of", 36], ["the", 33], ["to", 26], ["i", 22], ["and", 19], ["a", 16], ["in", 14], ["as", 13], ["it", 12], ["our", 11], ["that", 11], ["their", 10], ["is", 8], ["this", 8], ["for", 7], ["but", 6], ["on", 6], ["well", 6], ["have", 6], ["with", 6], ["be", 5], ["are", 5], ["constitution", 5], ["not", 5], ["government", 5], ["own", 4], ["all", 4], ["so", 4], ["them", 4], ["shall", 4], ["think", 4], ["may", 4], ["people", 4], ["sir", 4], ["can", 4], ["its", 4], ["if", 4], ["only", 3], ["who", 3], ["from", 3], ["no", 3], ["we", 3], ["opinions", 3], ["am", 3], ["better", 3], ["any", 3], ["men", 3], ["other", 3], ["by", 3], ["they", 3], ["therefore", 3], ["because", 3], ["being", 3], ["doubt", 3], ["opinion", 3], ["never", 3], ["errors", 2], ["many", 2], ["us", 2], ["me", 2], ["more", 2], ["general", 2], ["those", 2], ["wisdom", 2], ["having", 2], ["judgment", 2], ["administered", 2], ["such", 2], ["right", 2], ["others", 2], ["most", 2], ["when", 2], ["sure", 2], ["convention", 2], ["approve", 2], ["one", 2], ["had", 2], ["were", 2], ["which", 2], ["these", 2], ["assemble", 2], ["every", 2], ["meet", 2], ["wherever", 2], ["sister", 2], ["make", 2], ["objections", 2], ["there", 2], ["you", 2], ["naturally", 2], ["among", 2], ["infallibility", 2], ["church", 2], ["unanimity", 2], ["his", 2], ["or", 2], ["procuring", 1], ["between", 1], ["pope", 1], ["churches", 1], ["tells", 1], ["certainty", 1], ["doctrines", 1], ["dedication", 1], ["rome", 1], ["infallible", 1], ["england", 1], ["wrong", 1], ["though", 1], ["private", 1], ["persons", 1], ["almost", 1], ["highly", 1], ["protestant", 1], ["sect", 1], ["few", 1], ["express", 1], ["steele", 1], ["certain", 1], ["french", 1], ["lady", 1], ["error", 1], ["dispute", 1], ["far", 1], ["her", 1], ["differ", 1], ["said", 1], ["don't", 1], ["know", 1], ["how", 1], ["happens", 1], ["truth", 1], ["possession", 1], ["body", 1], ["myself", 1], ["that's", 1], ["always", 1], ["il", 1], ["n'y", 1], ["que", 1], ["moi", 1], ["qui", 1], ["toujours", 1], ["raison", 1], ["themselves", 1], ["sentiments", 1], ["religion", 1], ["agree", 1], ["sects", 1], ["faults", 1], ["indeed", 1], ["respect", 1], ["pay", 1], ["my", 1], ["apt", 1], ["grow", 1], ["necessary", 1], ["older", 1], ["form", 1], ["what", 1], ["_", 1], ["blessing", 1], ["otherwise", 1], ["found", 1], ["believe", 1], ["farther", 1], ["likely", 1], ["course", 1], ["years", 1], ["thought", 1], ["end", 1], ["despotism", 1], ["once", 1], ["forms", 1], ["done", 1], ["before", 1], ["subjects", 1], ["become", 1], ["corrupted", 1], ["need", 1], ["despotic", 1], ["incapable", 1], ["important", 1], ["too", 1], ["whether", 1], ["even", 1], ["change", 1], ["obtain", 1], ["able", 1], ["consideration", 1], ["fuller", 1], ["information", 1], ["number", 1], ["advantage", 1], ["joint", 1], ["obliged", 1], ["inevitably", 1], ["instances", 1], ["prejudices", 1], ["passions", 1], ["experienced", 1], ["long", 1], ["local", 1], ["interests", 1], ["selfish", 1], ["views", 1], ["an", 1], ["assembly", 1], ["perfect", 1], ["production", 1], ["expected", 1], ["astonishes", 1], ["lived", 1], ["find", 1], ["system", 1], ["approaching", 1], ["near", 1], ["perfection", 1], ["does", 1], ["will", 1], ["astonish", 1], ["enemies", 1], ["waiting", 1], ["confidence", 1], ["hear", 1], ["councils", 1], ["confounded", 1], ["like", 1], ["builders", 1], ["babel", 1], ["states", 1], ["point", 1], ["separation", 1], ["hereafter", 1], ["purpose", 1], ["cutting", 1], ["present", 1], ["another's", 1], ["throats", 1], ["thus", 1], ["consent", 1], ["expect", 1], ["best", 1], ["at", 1], ["sacrifice", 1], ["public", 1], ["good", 1], ["whispered", 1], ["syllable", 1], ["abroad", 1], ["within", 1], ["walls", 1], ["do", 1], ["born", 1], ["here", 1], ["die", 1], ["parts", 1], ["returning", 1], ["constituents", 1], ["report", 1], ["several", 1], ["he", 1], ["has", 1], ["endeavor", 1], ["gain", 1], ["partizans", 1], ["support", 1], ["might", 1], ["prevent", 1], ["generally", 1], ["received", 1], ["thereby", 1], ["lose", 1], ["salutary", 1], ["effects", 1], ["great", 1], ["advantages", 1], ["resulting", 1], ["favor", 1], ["confess", 1], ["foreign", 1], ["nations", 1], ["ourselves", 1], ["real", 1], ["apparent", 1], ["mr", 1], ["much", 1], ["strength", 1], ["efficiency", 1], ["difference", 1], ["securing", 1], ["happiness", 1], ["depends", 1], ["goodness", 1], ["integrity", 1], ["governors", 1], ["hope", 1], ["sakes", 1], ["part", 1], ["sake", 1], ["posterity", 1], ["act", 1], ["heartily", 1], ["unanimously", 1], ["recommending", 1], ["approved", 1], ["congress", 1], ["confirmed", 1], ["conventions", 1], ["influence", 1], ["extend", 1], ["turn", 1], ["future", 1], ["thoughts", 1], ["endeavors", 1], ["means", 1], ["administred", 1], ["whole", 1], ["help", 1], ["expressing", 1], ["wish", 1], ["member", 1], ["still", 1], ["would", 1], ["occasion", 1], ["little", 1], ["president", 1], ["manifest", 1], ["put", 1], ["name", 1], ["instrument", 1], ["benjamin", 1], ["franklin", 1]]
  }

  describe '#initialize' do
    it 'creates an instance of WordCounter' do
      expect(described_class).to eq(WordCounter)
    end
  end

  describe '#count_from_file' do
    it 'returns an array of words and their counts (given a file)' do
      expect(counter.count_from_file('example.txt')).to eq(example_parsed)
      expect(counter.count_from_file('speech.txt')).to eq(speech_parsed)
    end
  end

  describe '#count' do
    it 'returns an array of words and their counts (given a string)' do
      example_text = File.open('example.txt', 'r') { |f| f.read }
      expect(counter.count(example_text)).to eq(example_parsed)

      speech_text = File.open('speech.txt', 'r') { |f| f.read }
      expect(counter.count(speech_text)).to eq(speech_parsed)
    end
  end
end
