class Budget < ActiveHash::Base
  self.data = [
      {id: 1, name: '---'},
      {id: 2, name: '〜1000円'},
      {id: 3, name: '1000〜2000円'},
      {id: 4, name: '2000〜3000円'},
      {id: 5, name: '3000〜4000円'},
      {id: 6, name: '4000〜5000円'},
      {id: 7, name: '5000〜7000円'},
      {id: 8, name: '7000〜10000円'},
      {id: 9, name: '10000〜15000円'},
      {id: 10, name: '15000〜20000円'},
      {id: 11, name: '20000円〜'}
  ]
end