require 'webrick'

# Configurando o diretório público
public_dir = File.join(File.dirname(__FILE__), 'public')

# Configurando o servidor
server = WEBrick::HTTPServer.new(Port: 8000, DocumentRoot: public_dir)

# Capturando o sinal de interrupção para encerrar o servidor
trap('INT') { server.shutdown }

# Adicionando mensagem de inicialização
puts "SERVIDOR RODANDO EM http://localhost:8000/"

# Iniciando o servidor
server.start
