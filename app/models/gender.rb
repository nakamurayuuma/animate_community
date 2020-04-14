class Gender < ActiveHash::Base
  self.data = [ 
    {id: 0, gender: '-'},
    {id: 1, gender: '男性'}, {id: 2, gender: '女性'},
  ]
end