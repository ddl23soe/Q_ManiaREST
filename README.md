# Sistema QMania Restaurante - Versão HTML

## 📋 Descrição

O **Sistema QMania Restaurante** é uma solução completa para gerenciamento de restaurantes, convertida de PHP para HTML estático. O sistema oferece múltiplos painéis de controle para diferentes tipos de usuários, permitindo o gerenciamento completo das operações do restaurante.

## 🚀 Características Principais

- **Múltiplos Painéis de Acesso**: Administrador, Recepcionista, Chef, Garçon e Tela
- **Interface Responsiva**: Desenvolvida com Bootstrap 5
- **Dados de Exemplo**: Sistema funcional com dados simulados
- **Telas de Exibição**: Telas para pedidos e chamadas em tempo real
- **Sistema de Login**: Autenticação simulada com localStorage
- **Relatórios**: Módulos de relatórios para diferentes áreas

## 👥 Tipos de Usuários

### 1. Administrador
- **Login**: admin@admin.com / senha: 123
- **Funcionalidades**:
  - Gerenciamento de usuários e funcionários
  - Controle de produtos e pratos
  - Gestão de fornecedores e estoque
  - Relatórios gerenciais
  - Configurações do sistema

### 2. Recepcionista
- **Login**: recep@recep.com / senha: 123
- **Funcionalidades**:
  - Gerenciamento de reservas
  - Controle de clientes
  - Gestão de pedidos
  - Contas a pagar e receber
  - Relatórios financeiros

### 3. Chef
- **Login**: chef@chef.com / senha: 123
- **Funcionalidades**:
  - Gerenciamento do blog
  - Edição de perfil com redes sociais
  - Upload de imagens

### 4. Garçon
- **Login**: garcon@garcon.com / senha: 123
- **Funcionalidades**:
  - Visualização de pedidos
  - Controle de comissões
  - Relatórios de comissões

### 5. Tela
- **Login**: tela@tela.com / senha: 123
- **Funcionalidades**:
  - Tela de pedidos em tempo real
  - Tela de chamadas
  - Monitoramento de status

## 📁 Estrutura do Projeto

```
sistema/
├── index.html                    # Página de login principal
├── painel-admin/
│   └── index.html               # Painel administrativo
├── painel-recep/
│   └── index.html               # Painel da recepcionista
├── painel-chef/
│   └── index.html               # Painel do chef
├── painel-garcon/
│   └── index.html               # Painel do garçon
├── painel-tela/
│   ├── index.html               # Painel da tela
│   ├── tela.html                # Tela de pedidos
│   └── tela-chamada.html        # Tela de chamadas
├── rel/                         # Relatórios (em desenvolvimento)
├── img/                         # Imagens e recursos
├── vendor/                      # Bibliotecas externas
└── README.md                    # Esta documentação
```

## 🛠️ Tecnologias Utilizadas

- **HTML5**: Estrutura das páginas
- **CSS3**: Estilização e animações
- **JavaScript**: Funcionalidades interativas
- **Bootstrap 5**: Framework CSS responsivo
- **Bootstrap Icons**: Ícones do sistema
- **jQuery**: Manipulação do DOM
- **DataTables**: Tabelas interativas
- **localStorage**: Armazenamento local de dados

## 🚀 Como Usar

### 1. Acesso ao Sistema
1. Abra o arquivo `index.html` em um navegador web
2. Use uma das credenciais fornecidas acima
3. O sistema redirecionará automaticamente para o painel correspondente

### 2. Navegação
- Use o menu superior para navegar entre as funcionalidades
- Cada painel possui funcionalidades específicas para o tipo de usuário
- Os dados são simulados e atualizados em tempo real

### 3. Telas de Exibição
- **Tela de Pedidos**: Mostra pedidos em andamento com status em tempo real
- **Tela de Chamadas**: Exibe chamadas de atendimento com animações

## 📊 Funcionalidades por Módulo

### Módulo Administrativo
- ✅ Dashboard com estatísticas
- ✅ Gerenciamento de usuários
- ✅ Controle de produtos e pratos
- ✅ Gestão de fornecedores
- ✅ Relatórios gerenciais
- ✅ Configurações de sistema

### Módulo Financeiro
- ✅ Contas a pagar e receber
- ✅ Movimentações financeiras
- ✅ Relatórios financeiros
- ✅ Controle de comissões

### Módulo de Pedidos
- ✅ Visualização de pedidos
- ✅ Controle de status
- ✅ Tela de pedidos em tempo real
- ✅ Sistema de chamadas

### Módulo de Reservas
- ✅ Gerenciamento de reservas
- ✅ Controle de clientes
- ✅ Relatórios de reservas

## 🎨 Interface e Design

- **Design Responsivo**: Adaptável a diferentes tamanhos de tela
- **Tema Moderno**: Interface limpa e profissional
- **Animações**: Efeitos visuais para melhor experiência
- **Cores**: Paleta de cores consistente em todo o sistema
- **Ícones**: Uso de Bootstrap Icons para melhor usabilidade

## 📱 Compatibilidade

- ✅ Chrome (recomendado)
- ✅ Firefox
- ✅ Safari
- ✅ Edge
- ✅ Dispositivos móveis

## 🔧 Personalização

### Modificar Dados de Exemplo
Os dados são definidos em JavaScript nos arquivos HTML. Para modificar:

1. Abra o arquivo correspondente
2. Localize a seção de dados (geralmente no final do arquivo)
3. Modifique os arrays de dados conforme necessário

### Adicionar Novos Usuários
1. Edite o arquivo `index.html`
2. Adicione novos usuários no objeto `usuarios` na função `fazerLogin()`
3. Defina o nível de acesso e redirecionamento

### Personalizar Cores e Estilos
1. Modifique as classes CSS nos arquivos HTML
2. Use as variáveis CSS do Bootstrap para consistência
3. Adicione estilos customizados conforme necessário

## 📈 Próximas Funcionalidades

- [ ] Sistema de relatórios em PDF
- [ ] Integração com APIs de pagamento
- [ ] Sistema de notificações push
- [ ] Modo offline
- [ ] Backup automático de dados
- [ ] Sistema de logs de auditoria

## 🐛 Solução de Problemas

### Problema: Login não funciona
**Solução**: Verifique se está usando as credenciais corretas listadas na seção "Tipos de Usuários"

### Problema: Páginas não carregam
**Solução**: Verifique se todos os arquivos estão na estrutura correta e se o navegador suporta JavaScript

### Problema: Dados não aparecem
**Solução**: Os dados são simulados e podem levar alguns segundos para carregar

## 📞 Suporte

Para suporte técnico ou dúvidas sobre o sistema:

- **Email**: suporte@qmania.com.br
- **Telefone**: (11) 99999-9999
- **Horário**: Segunda a Sexta, 8h às 18h

## 📄 Licença

Este projeto é propriedade do QMania Restaurante. Todos os direitos reservados.

## 🔄 Histórico de Versões

### v1.0.0 (Atual)
- ✅ Conversão completa de PHP para HTML
- ✅ Sistema de login funcional
- ✅ Múltiplos painéis de acesso
- ✅ Telas de exibição em tempo real
- ✅ Interface responsiva
- ✅ Documentação completa

---

**Desenvolvido com ❤️ para o QMania Restaurante**

*Sistema de gerenciamento completo para restaurantes modernos*
