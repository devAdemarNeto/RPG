# Classe que representa um personagem no jogo
class Person
    attr_reader :life, :name

    # O método initialize é chamado quando um novo personagem é criado
    # Ele define o nome e a vida inicial do personagem
    def initialize(name, life = 100)
        @name = name  # Nome do personagem
        @life = life  # Pontos de vida inicial (padrão: 100)
    end

    # Método que executa um ataque contra outro personagem
    def battle(opponent)
        # Define uma chance de crítico: 20% (quando rand(1..5) resulta em 1)
        critical = rand(1..5) == 1 ? 2 : 1  # Multiplica o dano por 2 se for crítico

        # Define o dano causado, variando entre 10 e 30, e aplica o multiplicador crítico
        damage = rand(10..30) * critical

        # Aplica o dano ao oponente
        opponent.receive_damage(damage)

        # Exibe no console quem atacou, o dano causado, e se foi crítico
        puts "#{@name} atacou #{opponent.name} causando #{damage} de dano#{critical == 2 ? ' crítico!' : '!'}"
    end

    # Método para reduzir os pontos de vida do personagem quando ele recebe dano
    def receive_damage(amount)
        @life -= amount  # Subtrai o dano da vida atual
        @life = 0 if @life < 0  # Garante que a vida não fique negativa
    end

    # Método para exibir graficamente a barra de vida do personagem
    def display_life
        # Cria uma barra visual proporcional à vida atual (10 = 1 unidade na barra)
        bar = "=" * (@life / 10) + " " * (10 - @life / 10)
        puts "#{@name} [#{bar}] #{@life}/100"  # Mostra a barra e a vida numérica
    end
end

# Introdução do jogo
puts "Bem-vindo ao mundo de Eldoria!"
puts "Duas lendas estão prestes a se enfrentar pelo tesouro perdido do reino."

# Solicita os nomes dos guerreiros ao jogador
print "Insira o nome do primeiro guerreiro: "
name1 = gets.chomp  # Lê o nome do primeiro personagem
print "Insira o nome do segundo guerreiro: "
name2 = gets.chomp  # Lê o nome do segundo personagem

# Criação dos personagens com os nomes fornecidos
guerreiro1 = Person.new(name1)
guerreiro2 = Person.new(name2)

# Exibe o status inicial de cada personagem
puts "\nStatus inicial dos guerreiros:"
guerreiro1.display_life
guerreiro2.display_life

# Informa o início da batalha
puts "\nA batalha começa!"

# Loop principal que controla os turnos da batalha
loop do
    # Cada personagem ataca o outro
    guerreiro1.battle(guerreiro2)
    guerreiro2.battle(guerreiro1)

    # Exibe o status atualizado de ambos os guerreiros
    puts "\nStatus dos guerreiros após o turno:"
    guerreiro1.display_life
    guerreiro2.display_life

    # Verifica se um dos guerreiros foi derrotado (vida <= 0)
    if guerreiro1.life <= 0
        # Exibe mensagem de derrota para o guerreiro1
        puts "\n#{guerreiro1.name} foi derrotado!"
        puts "#{guerreiro2.name} venceu e conquistou o tesouro perdido do reino!"
        break  # Sai do loop e encerra o jogo
    elsif guerreiro2.life <= 0
        # Exibe mensagem de derrota para o guerreiro2
        puts "\n#{guerreiro2.name} foi derrotado!"
        puts "#{guerreiro1.name} venceu e conquistou o tesouro perdido do reino!"
        break  # Sai do loop e encerra o jogo
    end

    # Pausa breve entre turnos para melhorar a experiência visual do jogo
    sleep(1.5)
end
