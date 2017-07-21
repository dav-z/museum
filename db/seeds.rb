User.create([
  {id: 1, fname: 'David', lname: 'Zheng', email: 'david@dam.com', password: 'thisissecure', admin: true},
  {id: 2, fname: 'James', lname: 'Lim', email: 'james@dam.com', password: 'thisissecure', admin: true}
])
Location.create([
  {id: 1, wing: 'About', storage: false},
  {id: 2, wing: 'By', storage: false},
  {id: 3, wing: 'For', storage: false},
  {id: 4, wing: 'Storage', storage: true},
])
