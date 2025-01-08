# RPG Console Battle

Bem-vindo ao **RPG Console Battle**, um simples jogo de batalha entre dois guerreiros jogado no terminal. Este projeto é uma introdução a conceitos básicos de programação em Ruby, como classes, métodos, loops e interatividade com o usuário.

## 📜 Sobre o Jogo

O **RPG Console Battle** coloca dois guerreiros em combate pelo tesouro perdido do reino de Eldoria. Cada guerreiro possui uma barra de vida inicial de 100 pontos. Em cada turno, um dos guerreiros ataca o outro, causando dano variável. Há ainda uma chance de 20% de o ataque ser crítico, dobrando o dano causado.

O jogo termina quando um dos guerreiros perde toda a sua vida, e o outro é declarado vencedor!

## 🛠️ Recursos

- **Personagens Personalizáveis:** Os jogadores podem inserir os nomes dos guerreiros manualmente.
- **Barra de Vida Gráfica:** Mostra a quantidade de vida restante de cada personagem em tempo real.
- **Ataques Críticos:** Tornam o jogo mais emocionante e imprevisível, com 20% de chance de causar dano dobrado.

## 🚀 Como Jogar

```bash

1. Clone este repositório:
   
   git clone https://github.com/seu-usuario/rpg-console-battle.git

2. Acesse o diretório do projeto:
  
  cd rpg-console-battle

3. Execute o jogo no terminal:
   
   ruby rpg_battle.rb
   
4. Insira os nomes dos guerreiros quando solicitado e acompanhe a batalha no terminal.

```


## 🖥️ Exemplo de Execução

```plaintext
Bem-vindo ao mundo de Eldoria!
Duas lendas estão prestes a se enfrentar pelo tesouro perdido do reino.

Insira o nome do primeiro guerreiro: Ademar
Insira o nome do segundo guerreiro: Neto

Status inicial dos guerreiros:
Ademar [==========] 100/100
Neto   [==========] 100/100

A batalha começa!
Ademar atacou Neto causando 25 de dano!
Neto atacou Ademar causando 40 de dano crítico!

Status dos guerreiros após o turno:
Ademar [======    ] 60/100
Neto   [=======   ] 75/100

...

Neto foi derrotado!
Ademar venceu e conquistou o tesouro perdido do reino!

```



## 📚 Tecnologias Utilizadas

- **Linguagem:** Ruby

## 📝 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).




