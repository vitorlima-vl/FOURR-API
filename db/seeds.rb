# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Departamento.create(senha:'1234', email:'dmat@gmail.com', nome_depto:'DMAT')
Departamento.create(senha:'1234', email:'de@gmail.com', nome_depto:'DE')

Produto.create(descricao:'pc quebrado1',categoria:'eletronico',imagem:'www.google.com',nome_prod:'Macbook Pro',dono_produto:'de@gmail.com')
Produto.create(descricao:'pc quebrado2',categoria:'eletronico',imagem:'www.google.com',nome_prod:'Macbook Pro',dono_produto:'de@gmail.com')
Produto.create(descricao:'pc quebrado3',categoria:'eletronico',imagem:'www.google.com',nome_prod:'Macbook Air',dono_produto:'de@gmail.com')
Produto.create(descricao:'pc quebrado4',categoria:'eletronico',imagem:'www.google.com',nome_prod:'Macbook Air',dono_produto:'de@gmail.com')
Produto.create(descricao:'pc quebrado5',categoria:'eletronico',imagem:'www.google.com',nome_prod:'Macbook Air',dono_produto:'de@gmail.com')
Produto.create(descricao:'pc quebrado6',categoria:'eletronico',imagem:'www.google.com',nome_prod:'Macbook Pro',dono_produto:'dmat@gmail.com')
Produto.create(descricao:'pc quebrado7',categoria:'eletronico',imagem:'www.google.com',nome_prod:'Macbook Pro',dono_produto:'dmat@gmail.com')

Solicitacao.create(depto_solicitante:'dmat@gmail.com',produto_id:'2',data_solicitacao:'1999-Jan-08')
Solicitacao.create(depto_solicitante:'dmat@gmail.com',produto_id:'3',data_solicitacao:'1999-Jan-08')
Solicitacao.create(depto_solicitante:'de@gmail.com',produto_id:'4',data_solicitacao:'1999-Jan-08')

Historico.create(produto_id:'5',depto_solicitante:'dmat@gmail.com',resultado:'0',data_reposta:'1999-Jan-08',data_solicitacao:'1999-Jan-08')
Historico.create(produto_id:'6',depto_solicitante:'dmat@gmail.com',resultado:'1',data_reposta:'1999-Jan-09',data_solicitacao:'1999-Jan-08')
Historico.create(produto_id:'7',depto_solicitante:'dmat@gmail.com',resultado:'1',data_reposta:'1999-Jan-12',data_solicitacao:'1999-Jan-09')