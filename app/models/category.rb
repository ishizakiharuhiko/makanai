class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '和食・日本料理' },
    { id: 3, name: '中華' },
    { id: 4, name: 'イタリアン' },
    { id: 5, name: 'フレンチ' },
    { id: 6, name: '鍋・おでん' },
    { id: 7, name: 'カフェ・スイーツ' },
    { id: 8, name: 'ビュッフェ・バイキング' },
    { id: 9, name: '居酒屋・バー' },
    { id: 10, name: 'しゃぶしゃぶ・すき焼き' },
    { id: 11, name: '焼肉・ステーキ' },
    { id: 12, name: 'アジア・エスニック' },
    { id: 13, name: 'すし・魚料理' },
    { id: 14, name: 'ラーメン・麺類' },
    { id: 15, name: '焼き鳥・串料理' },
    { id: 16, name: 'お好み焼き・粉物' },
    { id: 17, name: '養殖・西洋料理' },
    { id: 18, name: '郷土料理' },
    { id: 19, name: 'ファミレス・ファーストフード' },
    { id: 20, name: 'アメリカ料理' },
    { id: 21, name: 'アフリカ料理' },
    { id: 22, name: '丼・揚げ物' },
    { id: 23, name: 'その他' }
  ]
end
