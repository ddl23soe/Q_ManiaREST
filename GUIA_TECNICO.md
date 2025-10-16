# Guia Técnico - Sistema QMania Restaurante

## 📋 Índice

1. [Visão Geral Técnica](#visão-geral-técnica)
2. [Arquitetura do Sistema](#arquitetura-do-sistema)
3. [Estrutura de Arquivos](#estrutura-de-arquivos)
4. [Tecnologias Utilizadas](#tecnologias-utilizadas)
5. [Sistema de Autenticação](#sistema-de-autenticação)
6. [Gerenciamento de Estado](#gerenciamento-de-estado)
7. [Estrutura de Dados](#estrutura-de-dados)
8. [Funcionalidades JavaScript](#funcionalidades-javascript)
9. [Personalização e Extensão](#personalização-e-extensão)
10. [Deploy e Hospedagem](#deploy-e-hospedagem)
11. [Manutenção](#manutenção)
12. [Troubleshooting](#troubleshooting)

## 🔧 Visão Geral Técnica

O Sistema QMania Restaurante foi convertido de PHP para HTML estático, mantendo todas as funcionalidades originais através de JavaScript e dados simulados. O sistema é totalmente client-side, não requerendo servidor web para funcionamento básico.

### Características Técnicas
- **Frontend Only**: Funciona completamente no navegador
- **Sem Backend**: Não requer servidor PHP ou banco de dados
- **Dados Simulados**: Utiliza JavaScript para simular dados dinâmicos
- **Responsivo**: Interface adaptável a diferentes dispositivos
- **Modular**: Estrutura organizada em módulos por tipo de usuário

## 🏗️ Arquitetura do Sistema

```
┌─────────────────────────────────────────────────────────────┐
│                    CAMADA DE APRESENTAÇÃO                   │
├─────────────────────────────────────────────────────────────┤
│  HTML5 + CSS3 + JavaScript + Bootstrap 5 + jQuery         │
├─────────────────────────────────────────────────────────────┤
│                    CAMADA DE LÓGICA                         │
├─────────────────────────────────────────────────────────────┤
│  JavaScript (Autenticação, Navegação, Dados Simulados)    │
├─────────────────────────────────────────────────────────────┤
│                    CAMADA DE DADOS                          │
├─────────────────────────────────────────────────────────────┤
│  localStorage + Dados Estáticos em JavaScript              │
└─────────────────────────────────────────────────────────────┘
```

## 📁 Estrutura de Arquivos

```
sistema/
├── index.html                          # Página de login principal
├── README.md                           # Documentação principal
├── MANUAL_DO_USUARIO.md               # Manual do usuário
├── GUIA_TECNICO.md                    # Este guia técnico
├── painel-admin/
│   └── index.html                     # Painel administrativo
├── painel-recep/
│   └── index.html                     # Painel da recepcionista
├── painel-chef/
│   └── index.html                     # Painel do chef
├── painel-garcon/
│   └── index.html                     # Painel do garçon
├── painel-tela/
│   ├── index.html                     # Painel da tela
│   ├── tela.html                      # Tela de pedidos
│   └── tela-chamada.html              # Tela de chamadas
├── rel/                               # Relatórios (futuro)
├── img/                               # Recursos de imagem
│   ├── banners/                       # Banners promocionais
│   ├── blog/                          # Imagens do blog
│   ├── chef/                          # Fotos dos chefs
│   ├── galeria/                       # Galeria de imagens
│   ├── pratos/                        # Fotos dos pratos
│   ├── produtos/                      # Fotos dos produtos
│   └── *.png, *.jpg                   # Logos e ícones
├── vendor/                            # Bibliotecas externas
│   ├── css/                           # Estilos customizados
│   └── DataTables/                    # Plugin de tabelas
└── dompdf/                            # Biblioteca PDF (legado)
```

## 🛠️ Tecnologias Utilizadas

### Frontend
- **HTML5**: Estrutura semântica das páginas
- **CSS3**: Estilização avançada com animações
- **JavaScript ES6+**: Lógica de negócio e interatividade
- **Bootstrap 5**: Framework CSS responsivo
- **jQuery 3.2.1**: Manipulação do DOM e AJAX
- **Bootstrap Icons**: Ícones do sistema

### Bibliotecas Externas
- **DataTables**: Tabelas interativas com filtros
- **jQuery Mask**: Máscaras para campos de entrada
- **DOMPDF**: Geração de relatórios em PDF (legado)

### Recursos do Navegador
- **localStorage**: Armazenamento local de dados
- **FileReader API**: Upload e preview de imagens
- **CSS Animations**: Animações e transições
- **Responsive Design**: Adaptação a diferentes telas

## 🔐 Sistema de Autenticação

### Implementação
```javascript
// Dados de usuários simulados
const usuarios = {
    'admin@admin.com': { 
        senha: '123', 
        nivel: 'Administrador', 
        nome: 'Administrador' 
    },
    // ... outros usuários
};

// Função de login
function fazerLogin() {
    const usuario = document.getElementById('usuario').value;
    const senha = document.getElementById('senha').value;
    
    if (usuarios[usuario] && usuarios[usuario].senha === senha) {
        // Salvar no localStorage
        localStorage.setItem('usuarioLogado', JSON.stringify({
            nome: usuarios[usuario].nome,
            email: usuario,
            nivel: usuarios[usuario].nivel
        }));
        
        // Redirecionar conforme nível
        redirecionarUsuario(usuarios[usuario].nivel);
    }
}
```

### Fluxo de Autenticação
1. **Login**: Usuário insere credenciais
2. **Validação**: JavaScript valida contra dados simulados
3. **Armazenamento**: Dados salvos no localStorage
4. **Redirecionamento**: Usuário direcionado para painel específico
5. **Verificação**: Cada painel verifica autenticação ao carregar

## 📊 Gerenciamento de Estado

### localStorage
```javascript
// Salvar dados do usuário
localStorage.setItem('usuarioLogado', JSON.stringify(dadosUsuario));

// Recuperar dados do usuário
const usuarioLogado = JSON.parse(localStorage.getItem('usuarioLogado'));

// Verificar autenticação
if (!usuarioLogado) {
    window.location.href = '../index.html';
}
```

### Dados Simulados
```javascript
// Exemplo: Dados de pedidos
const pedidos = [
    {
        id: 1,
        mesa: 5,
        cliente: "João Silva",
        itens: [
            { nome: "Pizza Margherita", quantidade: 1, preco: 35.00 }
        ],
        status: "preparando",
        tempo: "15 min",
        total: 45.00,
        hora: "14:30"
    }
    // ... mais pedidos
];
```

## 🗃️ Estrutura de Dados

### Usuários
```javascript
{
    email: string,
    senha: string,
    nivel: 'Administrador' | 'Recepcionista' | 'Chef' | 'Garçon' | 'Tela',
    nome: string,
    cpf: string
}
```

### Pedidos
```javascript
{
    id: number,
    mesa: number,
    cliente: string,
    itens: Array<{
        nome: string,
        quantidade: number,
        preco: number
    }>,
    status: 'aguardando' | 'preparando' | 'pronto',
    tempo: string,
    total: number,
    hora: string
}
```

### Produtos
```javascript
{
    id: number,
    nome: string,
    categoria: string,
    preco: number,
    estoque: number,
    descricao: string,
    imagem: string
}
```

## ⚙️ Funcionalidades JavaScript

### Navegação Dinâmica
```javascript
// Carregar conteúdo dinamicamente
function carregarConteudo(pagina) {
    const conteudo = document.getElementById('conteudo');
    
    switch(pagina) {
        case 'home':
            conteudo.innerHTML = gerarDashboard();
            break;
        case 'usuarios':
            conteudo.innerHTML = gerarTabelaUsuarios();
            break;
        // ... outros casos
    }
}

// Interceptar cliques nos links
document.addEventListener('click', function(e) {
    if (e.target.matches('a[href*="?pag="]')) {
        e.preventDefault();
        const url = new URL(e.target.href);
        const pagina = url.searchParams.get('pag');
        carregarConteudo(pagina);
    }
});
```

### Atualização em Tempo Real
```javascript
// Simular atualizações automáticas
setInterval(() => {
    // Atualizar status dos pedidos
    atualizarStatusPedidos();
    
    // Atualizar tempo das chamadas
    atualizarTempoChamadas();
}, 30000); // A cada 30 segundos
```

### Upload de Imagens
```javascript
// Preview de imagem
function carregarImgPerfil() {
    var target = document.getElementById('target-perfil');
    var file = document.querySelector("#imagem-perfil").files[0];

    if (file) {
        var reader = new FileReader();
        reader.onloadend = function () {
            target.src = reader.result;
        };
        reader.readAsDataURL(file);
    }
}
```

## 🎨 Personalização e Extensão

### Adicionar Novos Usuários
```javascript
// Em index.html, função fazerLogin()
const usuarios = {
    // Usuários existentes...
    'novo@usuario.com': { 
        senha: '123', 
        nivel: 'Administrador', 
        nome: 'Novo Usuário' 
    }
};
```

### Adicionar Novas Funcionalidades
```javascript
// Em qualquer painel, adicionar novo caso
function carregarConteudo(pagina) {
    switch(pagina) {
        // Casos existentes...
        case 'nova-funcionalidade':
            conteudo.innerHTML = gerarNovaFuncionalidade();
            break;
    }
}
```

### Personalizar Estilos
```css
/* Adicionar estilos customizados */
.minha-classe {
    background: linear-gradient(45deg, #ff6b6b, #ee5a24);
    color: white;
    padding: 10px 20px;
    border-radius: 25px;
}

/* Sobrescrever estilos do Bootstrap */
.btn-primary {
    background-color: #custom-color;
    border-color: #custom-color;
}
```

### Adicionar Novos Dados
```javascript
// Expandir dados simulados
const novosDados = [
    {
        id: 1,
        campo1: 'valor1',
        campo2: 'valor2',
        // ... mais campos
    }
    // ... mais registros
];
```

## 🚀 Deploy e Hospedagem

### Hospedagem Estática
O sistema pode ser hospedado em qualquer serviço de hospedagem estática:

- **GitHub Pages**: Gratuito para repositórios públicos
- **Netlify**: Deploy automático a partir do Git
- **Vercel**: Hospedagem gratuita com CDN
- **Firebase Hosting**: Integração com serviços Google
- **AWS S3**: Armazenamento estático na nuvem

### Configuração Básica
1. **Upload dos arquivos** para o servidor
2. **Configurar index.html** como página inicial
3. **Verificar permissões** de acesso aos arquivos
4. **Testar funcionalidades** em produção

### Otimizações para Produção
```html
<!-- Minificar CSS e JS -->
<link rel="stylesheet" href="css/style.min.css">
<script src="js/app.min.js"></script>

<!-- Adicionar cache headers -->
<meta http-equiv="Cache-Control" content="max-age=31536000">
```

## 🔧 Manutenção

### Atualizações Regulares
- **Dados simulados**: Atualizar conforme necessário
- **Bibliotecas**: Manter versões atualizadas
- **Navegadores**: Testar compatibilidade
- **Performance**: Monitorar tempo de carregamento

### Backup
- **Arquivos**: Backup regular de todos os arquivos
- **Dados**: Exportar dados do localStorage se necessário
- **Configurações**: Documentar personalizações

### Monitoramento
- **Erros JavaScript**: Verificar console do navegador
- **Performance**: Usar DevTools para análise
- **Compatibilidade**: Testar em diferentes navegadores

## 🐛 Troubleshooting

### Problemas Comuns

#### Login não funciona
```javascript
// Verificar dados no localStorage
console.log(localStorage.getItem('usuarioLogado'));

// Limpar dados corrompidos
localStorage.clear();
```

#### Páginas não carregam
```javascript
// Verificar se JavaScript está habilitado
if (typeof(Storage) === "undefined") {
    alert("localStorage não suportado");
}

// Verificar erros no console
console.error("Erro:", error);
```

#### Dados não aparecem
```javascript
// Verificar se dados estão definidos
console.log(typeof pedidos); // deve retornar "object"

// Verificar se função está sendo chamada
console.log("Carregando conteúdo:", pagina);
```

#### Problemas de CSS
```css
/* Verificar se Bootstrap está carregado */
.bootstrap-loaded {
    /* Estilos do Bootstrap devem estar disponíveis */
}

/* Forçar estilos importantes */
.important-style {
    !important;
}
```

### Debugging
```javascript
// Adicionar logs para debug
function debugLog(message, data) {
    console.log(`[DEBUG] ${message}:`, data);
}

// Verificar estado do sistema
function verificarEstado() {
    debugLog("Usuário logado", localStorage.getItem('usuarioLogado'));
    debugLog("Dados carregados", typeof pedidos);
    debugLog("Página atual", window.location.href);
}
```

### Performance
```javascript
// Otimizar carregamento de dados
function carregarDadosLazy() {
    // Carregar dados apenas quando necessário
    if (!dadosCarregados) {
        carregarDados();
        dadosCarregados = true;
    }
}

// Debounce para eventos frequentes
function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}
```

---

**Este guia técnico fornece todas as informações necessárias para entender, personalizar e manter o Sistema QMania Restaurante. Para dúvidas específicas, consulte a documentação das tecnologias utilizadas.**
