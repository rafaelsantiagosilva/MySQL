# BANCO DE DADOS:
	# TABELAS
		# REGISTROS
			# CAMPOS
            
# TIPOS PRIMITIVOS -> números(inteiros, reais e lógicos), data e tempo, literais(caracteres, textos, binários e coleções), espaciais 
	# NÚMEROS:
        # Inteiros -> TinyInt, SmallInt, Int, MediumInt, BigInt (bytes)
		# Reais -> Decimal, Float, Double, Real
		# Lógico -> Bit, Boolean
        
	# DATA E TEMPO -> Date, DateTime, TimeStamp, Time, Year
    
    # LITERAL:
		# Caracteres -> Char, VarChar
        # Textos -> TinyText, Text, MediumText, LongText (strings)
        # Binários -> TinyBlob, Blob, MediumBlob, LongBlob
        # Coleções -> Enum, Set
        
	# ESPACIAIS -> Geometry, Point, Polygon, MultiPolygon
    
use cadastro;
CREATE TABLE pessoas(
nome varchar(30),
idade tinyint(3),
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

describe pessoas;