# Service Pro - Sistema de Manutenção de Computadores

## 📋 Descrição
Service Pro é um sistema de gerenciamento para serviços de manutenção de computadores, desenvolvido em Java utilizando NetBeans IDE. O sistema permite o cadastro de clientes e o registro de produtos danificados, facilitando o controle e acompanhamento dos serviços de manutenção.

## 🚀 Funcionalidades

### Módulo de Clientes
- Cadastro de novos clientes
- Edição de dados dos clientes
- Consulta de clientes
- Exclusão de registros de clientes

### Módulo de Produtos Danificados
- Registro de equipamentos com defeito
- Descrição detalhada dos problemas
- Acompanhamento do status do reparo
- Histórico de manutenções

## 💻 Tecnologias Utilizadas
- Java
- NetBeans IDE
- MySQL (Banco de Dados)
- Interface Swing

## 🛠️ Pré-requisitos
- JDK 8 ou superior
- NetBeans IDE
- MySQL Server
- Connector/J (Driver JDBC para MySQL)

## 📦 Instalação

1. Clone o repositório
```bash
git clone [URL_DO_REPOSITÓRIO]
```

2. Abra o projeto no NetBeans IDE
- File > Open Project
- Navegue até a pasta do projeto
- Selecione o projeto e clique em Open

3. Configure o banco de dados
- Execute o script SQL disponível em `database/script.sql`
- Configure as credenciais do banco de dados no arquivo `src/config/DatabaseConfig.java`

4. Execute o projeto
- Clique com o botão direito no projeto
- Selecione "Run"

## 🔧 Configuração do Banco de Dados
O sistema utiliza MySQL como banco de dados. As configurações padrão são:
- Host: localhost
- Porta: 3306
- Usuário: root
- Banco de dados: servicepro_db

## 👥 Telas do Sistema

### Tela de Login
- Acesso seguro ao sistema
- Autenticação de usuários

### Tela Principal
- Menu intuitivo
- Acesso rápido a todas as funcionalidades

### Cadastro de Clientes
- Formulário completo para dados do cliente
- Validação de campos
- Busca e filtros

### Registro de Produtos Danificados
- Cadastro detalhado do equipamento
- Status do serviço
- Orçamento
- Prazo de entrega

## 🤝 Contribuição
Para contribuir com o projeto:
1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b `)
3. Commit suas mudanças (`git commit -m ''`)
4. Push para a branch (`git push origin feature/`)
5. Abra um Pull Request

## 📝 Licença
Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## ✒️ Autores
- Seu Nome - Desenvolvedor Principal

## 📞 Suporte
Para suporte e dúvidas, entre em contato através:
- Email: douglasoliveiraarjo@gmail.com
- Telefone: 61992897567
