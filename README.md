README.md
Aqui está o README que preparamos para o seu projeto, formatado e pronto para ser usado.

🛒 Modelo de Banco de Dados para E-commerce
Este projeto é um modelo de banco de dados relacional completo e funcional, projetado para ser o coração de uma plataforma de e-commerce. Ele abrange desde a gestão de clientes e produtos até a logística de pedidos e pagamentos, com um design focado em integridade, flexibilidade e escalabilidade.

🚀 Sobre o Projeto
O objetivo principal deste projeto foi criar um sistema de banco de dados robusto que simule as operações de uma loja online, abordando desafios comuns como a validação de dados, o gerenciamento de relações complexas e o rastreamento de informações-chave.

Funcionalidades Principais
Gestão de Clientes: Suporte para clientes Pessoa Física (PF) e Pessoa Jurídica (PJ) com validação de documentos (CPF ou CNPJ) garantida por CHECK constraints.

Fluxo de Pedidos: Acompanhamento detalhado de pedidos, incluindo status, frete e formas de pagamento associadas.

Controle de Estoque e Cadeia de Suprimentos: Gerenciamento de estoque por localização e rastreamento de produtos através de seus respectivos fornecedores e vendedores.

Logística e Rastreamento: A tabela entrega permite que cada pedido tenha seu próprio registro de entrega com status e código de rastreamento, permitindo visibilidade total do processo de envio.

Flexibilidade de Pagamento: A tabela forma_pagamento permite que um cliente possa cadastrar e gerenciar múltiplas formas de pagamento para uso em pedidos futuros, como cartões de crédito e PIX.

Estrutura Técnica
O banco de dados é composto por 12 tabelas que utilizam as seguintes técnicas:

Chaves Primárias e Estrangeiras (PK, FK): Garantem a integridade referencial entre as tabelas.

Relacionamentos N:M: Mapeamento de relações de muitos para muitos através de tabelas de junção, como produtoPedido e produtoFornecedor.

Validações de Dados: Uso de restrições UNIQUE e CHECK para manter a consistência e a validade das informações.
