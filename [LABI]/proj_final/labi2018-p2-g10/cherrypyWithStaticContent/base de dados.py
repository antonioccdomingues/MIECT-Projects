import sqlite3 as sql
import sys

def new_excertos(dct): #função para adicionar novos samples á bd
	db = sql.connect('database.db') #conectar á bd
	db.execute("Insert into tabela1 (nome, tamanho, data, usos, autor, bpm) VALUES(?, ?, ?, ?, ?, ?, ?)", (dct["nome"], dct["tamanho"], dct["data"], 0, dct["autor"], dct["bpm"]))
	db.commit()
	db.close() #fechar a ligação
	
def get_excertos(nome):#funcao a devolver uma string com info do excertos
	db = sql.connect('database.db') #conectar á bd
	result = db.execute("SELECT FROM tabela1 WHERE nome=?;", (nome))
	row = result.fetchone();
	db.commit()
	db.close() #terminar ligacao
	return row
	
def del_excertos(nome): #funçao para eliminar exertos
	db = sql.connect('database.db')
	db.execute("DELETE FROM tabela1 WHERE nome=?;", (nome))
	db.commit()
	db.close()
	
def add_uso(nome,uso): #funçao que diz quantas vezes foi o sample foi usado
	db = sql.connect('database.db')
	result = db.execute("SELECT (uso) FROM tabela1 WHERE nome=?;", (nome))
	votos= result.fecthone();
	novos_usos = usos + uso
	db.execute("UPDATE tabela1 SET usos = ? WHERE nome=?;", (novos_usos, nome))
	db.commit()
	db.close()
	
######################################   tabela das musicas

def new_musica(dct): #função para adicionar novas musicas á tabela
	db = sql.connect('database.db') #conectar á bd
	db.execute("Insert into musicas (nome, tamanho, data, usos, autor, bpm) VALUES(?, ?, ?, ?, ?, ?, ?)", (dct["nome"], dct["tamanho"], dct["data"], 0, dct["autor"], dct["bpm"]))
	db.execute("ALTER TABLE users_votes ADD ? TEXT;", (dct["nome"])) #cria uma tabela que diz os utilizadores que votaram numa certa musica
	db.commit()
	db.close() #fechar a ligação
	
def get_musicas(nome):#funcao a devolver uma string com info do excertos
	db = sql.connect('database.db') #conectar á bd
	result = db.execute("SELECT FROM musicas WHERE nome=?;", (nome))
	row = result.fetchone();
	db.commit()
	db.close() #terminar ligacao
	return row
	
def del_musicas(nome): #funçao para eliminar musicas
	db = sql.connect('database.db')
	db.execute("DELETE FROM tabela1 WHERE nome=?;", (nome))
	db.execute("ALTER TABLE users DROP COLUMN ?;", (nome))
	db.commit()
	db.close()
	
def add_voto(nome_musica, nome_user, voto): #funçao que adiciona um voto á musica
	db = sql.connect('database.db')
	result = db.execute("SELECT (votos) FROM musicas WHERE nome=?;", (nome))
	votos= result.fecthone();
	novos_votos = votos + voto
	db.execute("UPDATE musicas SET votos = ? WHERE nome=?;", (novos_votos, nome))
	db.execute("UPDATE users  SET ? = ? WHERE nome = ?; ", (nome_musica, voto, nome_user))
	db.commit()
	db.close()
#####funçao para os utilizadores votarem

def votar(nome): #funçao para o utilizador votar
	db = sql.connect('database.db')
	result = db.execute("SELECT (voto) FROM musicas WHERE nome=?;", (nome))
	row = result.fetchone();
	db.commit()
	db.close();
	return row
	 	
