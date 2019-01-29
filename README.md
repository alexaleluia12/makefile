```text

# makefile simples para projetos médios de http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/


## usa estrutura
- build   (arquivos .o)
- bin     (alvo final executavel)
- src     (arquivos .c)
- include (arquivos .h)
- lib     (bibliotecas)

--------------
### pontos principais do Makefile

.PHONY => desconsidera caso o diretório já exista

DEPS=$(wildcard $(IDIR)/*.h) => constrói lista baseado no padrão passado

OBJ=$(patsubst src/%.c, $(ODIR)/%.o, $(SOURCES)) => (patsubst PADRAO, TROCA, FONTE) 
a partir de FONTE considerado o PADRAO usa TROCA. O alvo principal é o coringa %

$@ => esquerda de :

$^ => direita de :

$< => primeiro argumento depois de :

$(OBJ): $(ODIR)/%.o: src/%.c $(DEPS) build => sempre que um argumento mudar o alvo será recompilado,
vai gerar varias outras regras e o nome do arquivo vai ser passado corretamento como argumento para src/%.c

-I => path onde estão arquivos .h

```

## compilar rodar
```make```

```./bin/hellomake```


