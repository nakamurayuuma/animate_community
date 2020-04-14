class Blood < ActiveHash::Base
  self.data = [ 
    {id: 0, blood: '-'},
    {id: 1, blood: 'A型'}, {id: 2, blood: 'B型'}, {id: 3, blood: 'O型'},
    {id: 4, blood: 'AB型'} 
  ]
end