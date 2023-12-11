#!/usr/bin/ruby

INSERIR_RECEITA = 1
IMPRIMIR_RECEITAS = 2
BUSCAR_RECEITA = 3
SAIR = 4

def bem_vindo()
    puts 'Bem vindo ao CookBook - Sua rede social de receitas'
end

def imprimir_menu()
    puts "[#{INSERIR_RECEITA}] - Inserir receita"
    puts "[#{IMPRIMIR_RECEITAS}] - Listar receitas"
    puts "[#{BUSCAR_RECEITA}] - Buscar receita"
    puts "[#{SAIR}] - Sair"
    print 'Escolha uma opcao: '
    return gets.to_i()
end

def inserir_receita()
    puts 'Digite o nome da receita: '
    nome = gets.chomp()
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    return {nome: nome, tipo: tipo}
end

def imprimir_receitas(receitas)
    if receitas.empty?
        puts 'Nao ha receitas cadastradas ainda!'
    else
        puts '======== Receitas cadastradas =========='
        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end
        puts
        receitas.each do |key, value|
            puts "key: #{key}, value: #{value}"
        end
    end
    puts
end

def buscar_receita(receitas)
    puts 'Informe o nome da receita: '
    nome = gets.chomp()
    puts
    if !receitas.empty?
        achou = false
        resultado = ''
        #puts 'tem alguma coisa'
        receitas.each do |receita|
            #puts receita[:nome]
            #puts receita.key?(receita[:nome])
            #puts receita.fetch(receita[:nome], "#{receita[:nome]} isn't in this hash")
            if receita[:nome] == nome
                achou = true
                resultado = receita
            end
        end
        if achou == true
            puts "#{resultado[:nome]} - #{resultado[:tipo]}"
        else
            puts "#{nome} nao foi encontrado no livro de receitas"
        end    
    else
        puts 'Nao ha receitas cadastradas ainda!'
    end
end

bem_vindo()

receitas = []

opcao = imprimir_menu()

loop do
    if (opcao == INSERIR_RECEITA) 
        receitas << inserir_receita()
        puts "Receita cadastrada com sucesso!"    
    elsif (opcao == IMPRIMIR_RECEITAS)
        imprimir_receitas(receitas)
    elsif (opcao == BUSCAR_RECEITA)
        buscar_receita(receitas)
    elsif (opcao == SAIR)
        break
    else
        puts "Opcao invalida"
    end
    opcao = imprimir_menu()
end

puts 'Obrigado por usar o Cookbook. Bye!!'