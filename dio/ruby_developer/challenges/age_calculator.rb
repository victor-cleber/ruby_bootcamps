resultado = ''
loop do
    puts resultado
    puts 'Select an option: '
    puts '1 - Age '
    puts '0 - Exit'
    print 'Enter your choice: '

    opcao = gets.chomp.to_i

    if opcao == 1
        print 'Enther the year of birth: '
        ano_nascimento = gets.chomp.to_i
        print 'Inform the current year: '
        ano_atual  = gets.chomp.to_i
        idade = ano_atual - ano_nascimento
        resultado = "Anyone born in #{ano_nascimento} is #{idade} years old in #{ano_atual}."
    elsif opcao == 0
        break if opcao ==0
    else
        resultado = 'Invalid option!'        
    end
    system "clear"
end