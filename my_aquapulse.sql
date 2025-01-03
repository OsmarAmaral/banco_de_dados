-- AquaPulse - Sistema de irrigação automática

CREATE TABLE tbAdministradores (
  id_adm INT AUTO_INCREMENT PRIMARY KEY,
  nome_adm VARCHAR(100),
  sobrenome_adm VARCHAR(100),
  email_adm VARCHAR(100) UNIQUE,
  cargo_adm VARCHAR(100)
);

CREATE TABLE tbUsuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nome_usuario VARCHAR(100),
  sobrenome_usuario VARCHAR(100),
  email_usuario VARCHAR(255) UNIQUE,
  senha_usuario VARCHAR(255),
  cidade_usuario VARCHAR(255),
  estado_usuario VARCHAR(255)
);

CREATE TABLE tbPedidos (
  id_pedido INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  data_pedido DATE,
  status_pedido VARCHAR(50),
  total_pedido DECIMAL(10, 2),
  FOREIGN KEY (id_usuario) REFERENCES tbUsuarios(id_usuario)
);

CREATE TABLE tbComentarios (
  id_comentario INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  data_comentario DATE,
  conteudo_comentario VARCHAR(500),
  FOREIGN KEY (id_usuario) REFERENCES tbUsuarios(id_usuario)
);

CREATE TABLE tbMensagensSuporte (
  id_mensagem INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT,
  data_mensagem DATE,
  conteudo_mensagem TEXT,
  FOREIGN KEY (id_usuario) REFERENCES tbUsuarios(id_usuario)
);

CREATE TABLE tbProdutos (
  id_produto INT AUTO_INCREMENT PRIMARY KEY,
  nome_produto VARCHAR(100),
  descricao_produto TEXT,
  preco_produto DECIMAL(10, 2),
  estoque_produto INT
);

INSERT INTO tbAdministradores (nome_adm, sobrenome_adm, email_adm, cargo_adm)
  VALUES ('Osmar', 'Araujo', 'osmar.s@estudante.ifmt.edu.br', 'Tech Lead'),
         ('Iago', 'Bortoluzzi', 'iagogabriel9710@gmail.com', 'chefe'),
         ('Pedro', 'Alves', 'pedro@gmail.com', 'estagiario'),
         ('Iago', 'Paiva', 'iagofouletto@gmail.com', 'estagiario'),
         ('Amir', 'Tamlieh', 'amir.t@estudante.ifmt.edu.br', 'freelancer'),
         ('Leonardo', 'Leite', 'leornardo@email.com', 'freelancer');

INSERT INTO tbUsuarios (nome_usuario, sobrenome_usuario, email_usuario, senha_usuario, cidade_usuario, estado_usuario)
  VALUES ('Ana', 'Lima', 'ana.lima@email.com', 'senha123!', 'Aracaju', 'Sergipe'),
         ('André', 'Silva', 'andre.silva@email.com', 'seguro@456', 'Aparecida de Goiânia', 'Goiás'),
         ('Amanda', 'Oliveira', 'amanda.oliveira@email.com', 'minhaSenha789$', 'Anápolis', 'Goiás'),
         ('Alex', 'Souza', 'alex.souza@email.com', 'senhaAleatoria123%', 'Alagoinhas', 'Bahia'),
         ('Arthur', 'Costa', 'arthur.costa@email.com', 'senhaComplexa456&', 'Amparo', 'São Paulo'),
         ('Bruna', 'Martins', 'bruna.martins@email.com', 'senhaSegura789!', 'Belo Horizonte', 'Minas Gerais'),
         ('Bruno', 'Pereira', 'bruno.pereira@email.com', 'senhaNova@2025', 'Barbacena', 'Minas Gerais'),
         ('Bianca', 'Rocha', 'bianca.rocha@email.com', 'senha$ParaTeste', 'Brasília', 'Distrito Federal'),
         ('Bárbara', 'Ferreira', 'barbara.ferreira@email.com', 'forteSenha!23', 'Bauru', 'São Paulo'),
         ('Benjamin', 'Santos', 'benjamin.santos@email.com', 'superForte#98', 'Belém', 'Pará'),
         ('Carlos', 'Mendes', 'carlos.mendes@email.com', 'senha321@2025', 'Campinas', 'São Paulo'),
         ('Camila', 'Souza', 'camila.souza@email.com', 'aleatoria!56', 'Curitiba', 'Paraná'),
         ('Cecília', 'Lima', 'cecilia.lima@email.com', 'senhaExtra#89', 'Caxias do Sul', 'Rio Grande do Sul'),
         ('Caio', 'Alves', 'caio.alves@email.com', 'forteSenha456$', 'Cuiabá', 'Mato Grosso'),
         ('Cristina', 'Costa', 'cristina.costa@email.com', 'aleatoria$789', 'Campos dos Goytacazes', 'Rio de Janeiro'),
         ('Daniel', 'Silva', 'daniel.silva@email.com', 'novaSenha@001', 'Duque de Caxias', 'Rio de Janeiro'),
         ('Débora', 'Oliveira', 'debora.oliveira@email.com', 'minhaNova@45', 'Delmiro Gouveia', 'Alagoas'),
         ('David', 'Rodrigues', 'david.rodrigues@email.com', 'senha123$abc', 'Dourados', 'Mato Grosso do Sul'),
         ('Daniele', 'Pereira', 'daniele.pereira@email.com', 'senhaNova789!', 'Divinópolis', 'Minas Gerais'),
         ('Douglas', 'Santos', 'douglas.santos@email.com', 'senhaExtra@56', 'Diadema', 'São Paulo'),
         ('Eduardo', 'Costa', 'eduardo.costa@email.com', 'novaSenha@23', 'Espírito Santo do Pinhal', 'São Paulo'),
         ('Eliane', 'Martins', 'eliane.martins@email.com', 'aleatoria456#', 'Estância', 'Sergipe'),
         ('Emília', 'Gomes', 'emilia.gomes@email.com', 'senhaForte@78', 'Embu das Artes', 'São Paulo'),
         ('Enzo', 'Silva', 'enzo.silva@email.com', 'forteSenha#99', 'Eusébio', 'Ceará'),
         ('Evelyn', 'Souza', 'evelyn.souza@email.com', 'minhaSenha321$', 'Embu-Guaçu', 'São Paulo'),
         ('Fabiana', 'Rocha', 'fabiana.rocha@email.com', 'senhaNova#321', 'Fortaleza', 'Ceará'),
         ('Felipe', 'Pereira', 'felipe.pereira@email.com', 'senhaExtra@789', 'Florianópolis', 'Santa Catarina'),
         ('Fábio', 'Alves', 'fabio.alves@email.com', 'senhaSegura@654', 'Foz do Iguaçu', 'Paraná'),
         ('Fernanda', 'Souza', 'fernanda.souza@email.com', 'novaSenha@987', 'Franca', 'São Paulo'),
         ('Francisco', 'Santos', 'francisco.santos@email.com', 'superSenha!123', 'Feira de Santana', 'Bahia'),
         ('Gabriel', 'Lima', 'gabriel.lima@email.com', 'senhaLegal@456', 'Goiânia', 'Goiás'),
         ('Giovana', 'Costa', 'giovana.costa@email.com', 'senhaNova!78$', 'Guarujá', 'São Paulo'),
         ('Gustavo', 'Oliveira', 'gustavo.oliveira@email.com', 'senhaForte@901', 'Gravataí', 'Rio Grande do Sul'),
         ('Glória', 'Alves', 'gloria.alves@email.com', 'senhaExtra@654', 'Guarulhos', 'São Paulo'),
         ('Gisele', 'Pereira', 'gisele.pereira@email.com', 'aleatoria!987', 'Goiânia', 'Goiás'),
         ('Henrique', 'Santos', 'henrique.santos@email.com', 'senhaLegal@999', 'Hortolândia', 'São Paulo'),
         ('Heloísa', 'Lima', 'heloisa.lima@email.com', 'senhaExtra#789', 'Hidrolândia', 'Goiás'),
         ('Hugo', 'Oliveira', 'hugo.oliveira@email.com', 'senhaForte@201', 'Humaitá', 'Amazonas'),
         ('Helen', 'Costa', 'helen.costa@email.com', 'superSenha!321', 'Holambra', 'São Paulo'),
         ('Heitor', 'Pereira', 'heitor.pereira@email.com', 'senhaLegal@2025', 'Hermenópolis', 'Minas Gerais'),
         ('Isabela', 'Silva', 'isabela.silva@email.com', 'novaSenha@321', 'Ipatinga', 'Minas Gerais');
         ('Igor', 'Rocha', 'igor.rocha@email.com', 'senhaSegura123!', 'Ipojuca', 'Pernambuco'),
         ('Ícaro', 'Costa', 'icaro.costa@email.com', 'novaSenha456$', 'Ilhéus', 'Bahia'),
         ('Isadora', 'Pereira', 'isadora.pereira@email.com', 'senhaForte789@', 'Indaiatuba', 'São Paulo'),
         ('Irene', 'Santos', 'irene.santos@email.com', 'superSenha#321', 'Itaperuna', 'Rio de Janeiro'),
         ('João', 'Oliveira', 'joao.oliveira@email.com', 'senhaLegal456$', 'João Pessoa', 'Paraíba'),
         ('Juliana', 'Costa', 'juliana.costa@email.com', 'minhaSenha@2023', 'Juiz de Fora', 'Minas Gerais'),
         ('José', 'Silva', 'jose.silva@email.com', 'senhaExtra#654', 'Joinville', 'Santa Catarina'),
         ('Júlia', 'Souza', 'julia.souza@email.com', 'novaSenha!987', 'Jundiaí', 'São Paulo'),
         ('Jéssica', 'Pereira', 'jessica.pereira@email.com', 'senhaForte@123', 'Juazeiro', 'Bahia'),
         ('Karla', 'Lima', 'karla.lima@email.com', 'senha123!abc', 'Kirituba', 'Rio Grande do Sul'),
         ('Kleber', 'Oliveira', 'kleber.oliveira@email.com', 'senhaNova456$', 'Kémen', 'Espírito Santo'),
         ('Kevin', 'Santos', 'kevin.santos@email.com', 'forteSenha@789', 'Katendê', 'Minas Gerais'),
         ('Kátia', 'Costa', 'katia.costa@email.com', 'novaSenha#654', 'Karatu', 'Sergipe'),
         ('Karla', 'Souza', 'karla.souza@email.com', 'superSenha$123', 'Kanab', 'Goiás'),
         ('Lucas', 'Silva', 'lucas.silva@email.com', 'senhaExtra321$', 'Londrina', 'Paraná'),
         ('Lívia', 'Costa', 'livia.costa@email.com', 'novaSenha!456$', 'Luziânia', 'Goiás'),
         ('Laura', 'Pereira', 'laura.pereira@email.com', 'senhaForte#789', 'Lages', 'Santa Catarina'),
         ('Luan', 'Rocha', 'luan.rocha@email.com', 'minhaSenha@654', 'Limeira', 'São Paulo'),
         ('Leandro', 'Souza', 'leandro.souza@email.com', 'senhaNova123!', 'Leme', 'São Paulo'),
         ('Maria', 'Silva', 'maria.silva@email.com', 'forteSenha@456', 'Manaus', 'Amazonas'),
         ('Mateus', 'Costa', 'mateus.costa@email.com', 'senhaSegura@789', 'Maceió', 'Alagoas'),
         ('Marcela', 'Pereira', 'marcela.pereira@email.com', 'superSenha#456', 'Maringá', 'Paraná'),
         ('Michel', 'Rocha', 'michel.rocha@email.com', 'senha123@2025', 'Montes Claros', 'Minas Gerais'),
         ('Mário', 'Oliveira', 'mario.oliveira@email.com', 'novaSenha@456', 'Marília', 'São Paulo'),
         ('Nathalia', 'Souza', 'nathalia.souza@email.com', 'forteSenha789$', 'Niterói', 'Rio de Janeiro'),
         ('Nelson', 'Silva', 'nelson.silva@email.com', 'novaSenha123!', 'Natal', 'Rio Grande do Norte'),
         ('Natália', 'Lima', 'natalia.lima@email.com', 'senhaExtra456$', 'Nova Iguaçu', 'Rio de Janeiro'),
         ('Nicolas', 'Santos', 'nicolas.santos@email.com', 'senhaForte@654', 'Nanuque', 'Minas Gerais'),
         ('Noemi', 'Rocha', 'noemi.rocha@email.com', 'minhaSenha789@', 'Nova Friburgo', 'Rio de Janeiro'),
         ('Olga', 'Costa', 'olga.costa@email.com', 'senhaNova#123', 'Osasco', 'São Paulo'),
         ('Otávio', 'Oliveira', 'otavio.oliveira@email.com', 'senhaSegura@789', 'Olinda', 'Pernambuco'),
         ('Olívio', 'Silva', 'olivio.silva@email.com', 'superSenha456$', 'Ourinhos', 'São Paulo'),
         ('Orlando', 'Pereira', 'orlando.pereira@email.com', 'senhaExtra@321', 'Oriximiná', 'Pará'),
         ('Omar', 'Santos', 'omar.santos@email.com', 'novaSenha789$', 'Osvaldo Cruz', 'São Paulo'),
         ('Paula', 'Souza', 'paula.souza@email.com', 'senhaForte#456', 'Porto Alegre', 'Rio Grande do Sul'),
         ('Pedro', 'Lima', 'pedro.lima@email.com', 'senha123@789', 'Paulista', 'Pernambuco'),
         ('Priscila', 'Costa', 'priscila.costa@email.com', 'novaSenha!654$', 'Poços de Caldas', 'Minas Gerais'),
         ('Paulo', 'Silva', 'paulo.silva@email.com', 'forteSenha@789', 'Ponta Grossa', 'Paraná'),
         ('Patrícia', 'Rocha', 'patricia.rocha@email.com', 'minhaSenha456$', 'Piracicaba', 'São Paulo');
         ('Quésia', 'Almeida', 'quesia.almeida@email.com', 'senhaExtra#123', 'Quixeramobim', 'Ceará'),
         ('Quirino', 'Costa', 'quirino.costa@email.com', 'novaSenha456$', 'Quixadá', 'Ceará'),
         ('Quezia', 'Pereira', 'quezia.pereira@email.com', 'superSenha@789', 'Quilombo', 'Santa Catarina'),
         ('Quintino', 'Souza', 'quintino.souza@email.com', 'senhaForte321$', 'Quaraí', 'Rio Grande do Sul'),
         ('Quirina', 'Lima', 'quirina.lima@email.com', 'minhaSenha#456', 'Querência', 'Mato Grosso'),
         ('Rafael', 'Rocha', 'rafael.rocha@email.com', 'novaSenha123!', 'Rio de Janeiro', 'Rio de Janeiro'),
         ('Rita', 'Santos', 'rita.santos@email.com', 'senhaSegura@456', 'Recife', 'Pernambuco'),
         ('Ricardo', 'Costa', 'ricardo.costa@email.com', 'forteSenha789$', 'Ribeirão Preto', 'São Paulo'),
         ('Rogério', 'Lima', 'rogerio.lima@email.com', 'senhaNova#654', 'Rio Claro', 'São Paulo'),
         ('Renata', 'Pereira', 'renata.pereira@email.com', 'superSenha@123', 'Rondonópolis', 'Mato Grosso'),
         ('Samuel', 'Silva', 'samuel.silva@email.com', 'senhaForte456$', 'São Bernardo do Campo', 'São Paulo'),
         ('Sofia', 'Lima', 'sofia.lima@email.com', 'novaSenha789@', 'Salvador', 'Bahia'),
         ('Sérgio', 'Costa', 'sergio.costa@email.com', 'senhaExtra@654', 'Sorocaba', 'São Paulo'),
         ('Suzana', 'Pereira', 'suzana.pereira@email.com', 'senha123#456', 'São Paulo', 'São Paulo'),
         ('Silvana', 'Rocha', 'silvana.rocha@email.com', 'forteSenha@123', 'São José', 'Santa Catarina'),
         ('Tatiane', 'Santos', 'tatiane.santos@email.com', 'senhaNova!789', 'Teresina', 'Piauí'),
         ('Tiago', 'Pereira', 'tiago.pereira@email.com', 'minhaSenha456$', 'Taubaté', 'São Paulo'),
         ('Tânia', 'Lima', 'tania.lima@email.com', 'superSenha@321', 'Tocantinópolis', 'Tocantins'),
         ('Thales', 'Rocha', 'thales.rocha@email.com', 'senhaForte#456', 'Três Corações', 'Minas Gerais'),
         ('Tadeu', 'Souza', 'tadeu.souza@email.com', 'novaSenha789$', 'Taguatinga', 'Distrito Federal'),
         ('Ubirajara', 'Silva', 'ubirajara.silva@email.com', 'senha123!654', 'Ubatuba', 'São Paulo'),
         ('Uliana', 'Costa', 'uliana.costa@email.com', 'forteSenha@321', 'União da Vitória', 'Paraná'),
         ('Ugo', 'Lima', 'ugo.lima@email.com', 'novaSenha456$', 'Uberlândia', 'Minas Gerais'),
         ('Uriel', 'Rocha', 'uriel.rocha@email.com', 'senhaSegura789@', 'Uruçuí', 'Piauí'),
         ('Uélio', 'Pereira', 'uelio.pereira@email.com', 'superSenha#654', 'Umuarama', 'Paraná'),
         ('Vinícius', 'Souza', 'vinicius.souza@email.com', 'senhaNova@123', 'Vitória', 'Espírito Santo'),
         ('Verônica', 'Lima', 'veronica.lima@email.com', 'forteSenha456$', 'Várzea Grande', 'Mato Grosso'),
         ('Vanderlei', 'Rocha', 'vanderlei.rocha@email.com', 'minhaSenha!789', 'Volta Redonda', 'Rio de Janeiro'),
         ('Valéria', 'Silva', 'valeria.silva@email.com', 'novaSenha#456', 'Vila Velha', 'Espírito Santo'),
         ('Vitor', 'Pereira', 'vitor.pereira@email.com', 'superSenha789$', 'Valinhos', 'São Paulo'),
         ('Wilson', 'Costa', 'wilson.costa@email.com', 'senhaForte@321', 'Wenceslau Braz', 'São Paulo'),
         ('Wagner', 'Pereira', 'wagner.pereira@email.com', 'novaSenha!654$', 'Washington Luís', 'São Paulo'),
         ('Wanessa', 'Lima', 'wanessa.lima@email.com', 'senhaExtra@789', 'Waldir Pires', 'Bahia'),
         ('William', 'Souza', 'william.souza@email.com', 'forteSenha123!', 'Windsor', 'Rio de Janeiro'),
         ('Walter', 'Rocha', 'walter.rocha@email.com', 'novaSenha#456', 'Xinguara', 'Pará'),
         ('Xuxa', 'Costa', 'xuxa.costa@email.com', 'superSenha456$', 'Xanxerê', 'Santa Catarina'),
         ('Xavier', 'Lima', 'xavier.lima@email.com', 'senhaNova@789', 'Xinguara', 'Pará'),
         ('Xenon', 'Pereira', 'xenon.pereira@email.com', 'forteSenha@123', 'Xapuri', 'Acre'),
         ('Xênia', 'Rocha', 'xenia.rocha@email.com', 'senhaExtra#654', 'Xingu', 'Mato Grosso'),
         ('Xander', 'Souza', 'xander.souza@email.com', 'novaSenha123$', 'Xerém', 'Rio de Janeiro'),
         ('Yasmin', 'Pereira', 'yasmin.pereira@email.com', 'senhaSegura@456', 'Ypiranga', 'Rio Grande do Sul'),
         ('Yago', 'Costa', 'yago.costa@email.com', 'superSenha789$', 'Yaguara', 'Minas Gerais'),
         ('Yuri', 'Silva', 'yuri.silva@email.com', 'novaSenha!654$', 'Ytacaranha', 'Bahia'),
         ('Yara', 'Lima', 'yara.lima@email.com', 'forteSenha456$', 'Yakutinga', 'São Paulo'),
         ('Yvone', 'Souza', 'yvone.souza@email.com', 'senhaNova#789', 'Ypiranga do Sul', 'Rio Grande do Sul'),
         ('Zeca', 'Costa', 'zeca.costa@email.com', 'minhaSenha@321', 'Zé Doca', 'Maranhão'),
         ('Zilda', 'Silva', 'zilda.silva@email.com', 'novaSenha456$', 'Zona Sul', 'Rio de Janeiro'),
         ('Zé', 'Pereira', 'ze.pereira@email.com', 'forteSenha@654', 'Zé Pimenta', 'Bahia'),
         ('Zoe', 'Rocha', 'zoe.rocha@email.com', 'senhaExtra#789', 'Zé de Sá', 'Maranhão'),
         ('Zuleide', 'Souza', 'zuleide.souza@email.com', 'superSenha123$', 'Zero', 'São Paulo');
         
INSERT INTO tbPedidos (id_usuario, data_pedido, status_pedido, total_pedido)  
VALUES   (1, '2024-01-10', 'Concluído', 599.99),  
         (2, '2024-02-14', 'Pendente', 799.99),  
         (3, '2024-03-01', 'Cancelado', 499.99),  
         (4, '2024-03-20', 'Concluído', 699.99),  
         (5, '2024-04-05', 'Concluído', 549.99),  
         (6, '2024-04-18', 'Pendente', 799.99),  
         (7, '2024-05-07', 'Concluído', 649.99),  
         (8, '2024-05-15', 'Cancelado', 599.99),  
         (9, '2024-06-02', 'Concluído', 499.99),  
         (10, '2024-06-10', 'Concluído', 699.99),  
         (11, '2024-06-20', 'Pendente', 749.99),  
         (12, '2024-07-03', 'Concluído', 599.99),  
         (13, '2024-07-12', 'Cancelado', 799.99),  
         (14, '2024-08-01', 'Concluído', 699.99),  
         (15, '2024-08-08', 'Pendente', 649.99),  
         (16, '2024-08-18', 'Concluído', 499.99),  
         (17, '2024-09-05', 'Cancelado', 749.99),  
         (18, '2024-09-15', 'Concluído', 599.99),  
         (19, '2024-10-01', 'Concluído', 799.99),  
         (20, '2024-10-10', 'Pendente', 549.99),  
         (21, '2024-10-20', 'Concluído', 649.99),  
         (22, '2024-11-03', 'Cancelado', 499.99),  
         (23, '2024-11-11', 'Concluído', 699.99),  
         (24, '2024-11-25', 'Concluído', 599.99),  
         (25, '2024-12-02', 'Pendente', 799.99),  
         (26, '2024-12-08', 'Concluído', 749.99),  
         (27, '2024-12-15', 'Cancelado', 649.99),  
         (28, '2024-12-20', 'Concluído', 499.99),  
         (29, '2024-12-25', 'Pendente', 599.99),  
         (30, '2024-12-30', 'Concluído', 549.99),  
         (31, '2025-01-05', 'Cancelado', 799.99),  
         (32, '2025-01-15', 'Concluído', 699.99),  
         (33, '2025-01-25', 'Pendente', 749.99),  
         (34, '2025-02-02', 'Concluído', 599.99),  
         (35, '2025-02-10', 'Cancelado', 649.99),  
         (35, '2024-12-16' , 'Em andamento', 159.99),
         (36, '2025-02-20', 'Concluído', 699.99),  
         (37, '2025-03-01', 'Pendente', 799.99),  
         (38, '2025-03-10', 'Concluído', 749.99),  
         (39, '2025-03-20', 'Cancelado', 599.99),  
         (40, '2025-03-25', 'Concluído', 549.99),  
         (41, '2025-04-01', 'Pendente', 649.99),  
         (42, '2025-04-10', 'Concluído', 799.99),  
         (43, '2025-04-20', 'Cancelado', 499.99),  
         (44, '2025-05-01', 'Concluído', 749.99),  
         (45, '2025-05-10', 'Pendente', 699.99),  
         (46, '2025-05-20', 'Concluído', 649.99),  
         (47, '2025-06-01', 'Cancelado', 599.99),  
         (48, '2025-06-10', 'Concluído', 799.99),  
         (49, '2025-06-20', 'Pendente', 499.99),  
         (50, '2025-07-01', 'Concluído', 749.99),
         (51, '2024-12-01', 'Em andamento', 120.50),
         (52, '2024-12-02', 'Concluído', 200.75),
         (53, '2024-12-03', 'Em andamento', 95.00),
         (54, '2024-12-04', 'Cancelado', 50.30),
         (55, '2024-12-05', 'Em andamento', 185.90),
         (56, '2024-12-06', 'Concluído', 215.40),
         (57, '2024-12-07', 'Em andamento', 320.20),
         (58, '2024-12-08', 'Cancelado', 130.80),
         (59, '2024-12-09', 'Em andamento', 99.99),
         (60, '2024-12-10', 'Concluído', 180.00),
         (61, '2024-12-11', 'Em andamento', 250.00),
         (62, '2024-12-12', 'Concluído', 300.75),
         (63, '2024-12-13', 'Cancelado', 110.60),
         (64, '2024-12-14', 'Em andamento', 420.00),
         (65, '2024-12-15', 'Concluído', 150.30),
         (66, '2024-12-16', 'Em andamento', 175.25),
         (67, '2024-12-17', 'Cancelado', 85.50),
         (68, '2024-12-18', 'Concluído', 275.90),
         (69, '2024-12-19', 'Em andamento', 225.10),
         (70, '2024-12-20', 'Concluído', 320.00),
         (71, '2024-12-21', 'Em andamento', 210.50),
         (72, '2024-12-22', 'Cancelado', 99.00),
         (73, '2024-12-23', 'Concluído', 160.75),
         (74, '2024-12-24', 'Em andamento', 245.60),
         (75, '2024-12-25', 'Cancelado', 120.00),
         (76, '2024-12-26', 'Em andamento', 195.20),
         (77, '2024-12-27', 'Concluído', 320.50),
         (78, '2024-12-28', 'Em andamento', 180.40),
         (79, '2024-12-29', 'Cancelado', 140.10),
         (80, '2024-12-30', 'Concluído', 210.20),
         (81, '2024-12-31', 'Em andamento', 170.00),
         (82, '2024-11-01', 'Concluído', 300.00),
         (83, '2024-11-02', 'Cancelado', 125.75),
         (84, '2024-11-03', 'Em andamento', 190.00),
         (85, '2024-11-04', 'Concluído', 250.25),
         (86, '2024-11-05', 'Cancelado', 99.50),
         (87, '2024-11-06', 'Em andamento', 215.90),
         (88, '2024-11-07', 'Concluído', 340.60),
         (89, '2024-11-08', 'Em andamento', 260.00),
         (90, '2024-11-09', 'Cancelado', 75.80),
         (91, '2024-11-10', 'Concluído', 195.10),
         (92, '2024-11-11', 'Em andamento', 230.30),
         (93, '2024-11-12', 'Cancelado', 115.40),
         (94, '2024-11-13', 'Em andamento', 265.75),
         (95, '2024-11-14', 'Concluído', 300.90),
         (96, '2024-11-15', 'Cancelado', 140.60),
         (97, '2024-11-16', 'Em andamento', 190.75),
         (98, '2024-11-17', 'Concluído', 225.20),
         (99, '2024-11-18', 'Em andamento', 310.50),
         (100, '2024-11-19', 'Cancelado', 155.30),
         (101, '2024-11-20', 'Em andamento', 180.20),
         (102, '2024-11-21', 'Concluído', 215.50),
         (103, '2024-11-22', 'Cancelado', 99.40),
         (104, '2024-11-23', 'Em andamento', 210.60),
         (105, '2024-11-24', 'Concluído', 230.30),
         (106, '2024-11-25', 'Em andamento', 145.00),
         (107, '2024-11-26', 'Cancelado', 120.00),
         (108, '2024-11-27', 'Concluído', 185.90),
         (109, '2024-11-28', 'Em andamento', 240.25),
         (110, '2024-11-29', 'Concluído', 320.40),
         (111, '2024-11-30', 'Cancelado', 210.50),
         (112, '2024-12-01', 'Em andamento', 180.00),
         (113, '2024-12-02', 'Concluído', 300.20),
         (114, '2024-12-03', 'Em andamento', 190.50),
         (115, '2024-12-04', 'Cancelado', 95.00),
         (116, '2024-12-05', 'Concluído', 270.40),
         (117, '2024-12-06', 'Em andamento', 130.60),
         (118, '2024-12-07', 'Cancelado', 100.80),
         (119, '2024-12-08', 'Concluído', 250.75),
         (120, '2024-12-09', 'Em andamento', 210.30),
         (121, '2024-12-10', 'Cancelado', 150.40),
         (122, '2024-12-11', 'Em andamento', 290.00),
         (123, '2024-12-12', 'Concluído', 380.60),
         (124, '2024-12-13', 'Em andamento', 175.30),
         (125, '2024-12-14', 'Concluído', 145.50),
         (126, '2024-12-15', 'Em andamento', 220.80),
         (127, '2024-12-16', 'Cancelado', 185.20),
         (128, '2024-12-17', 'Concluído', 280.00),
         (129, '2024-12-18', 'Em andamento', 250.60),
         (130, '2024-12-19', 'Cancelado', 170.30);

INSERT INTO tbComentarios (id_usuario, data_comentario, conteudo_comentario)
VALUES  (1, '2024-12-10', 'Produto excelente, ajudou muito na irrigação automática.'),
        (2, '2024-12-11', 'A entrega foi rápida, recomendo o sistema AquaPulse.'),
        (3, '2024-12-12', 'Tive um problema com a configuração inicial, mas o suporte foi muito atencioso.'),
        (4, '2024-12-13', 'Preço justo pela qualidade do produto.'),
        (5, '2024-12-14', 'Estou satisfeito com o desempenho do sistema, muito eficiente!');

INSERT INTO tbMensagensSuporte (id_usuario, data_mensagem, conteudo_mensagem)
VALUES  (1, '2024-12-01', 'Como configurar o sistema para irrigar em horários diferentes?'),
        (2, '2024-12-02', 'O produto chegou com uma peça faltando, como proceder?'),
        (3, '2024-12-03', 'Posso usar o sistema em uma plantação maior que 2 hectares?'),
        (4, '2024-12-05', 'Quais são as condições para a garantia do produto?'),
        (5, '2024-12-07', 'O suporte técnico pode ajudar na instalação inicial?');
       
INSERT INTO tbProdutos (nome_produto, descricao_produto, preco_produto, estoque_produto) 
VALUES  ('Sensor de Umidade', 'Sensor para medir a umidade do solo, ideal para irrigação automática.', 49.90, 200),
        ('Válvula Solenoide', 'Válvula para controle do fluxo de água em sistemas de irrigação.', 89.90, 150),
        ('Controlador Arduino', 'Placa Arduino para automação de sistemas de irrigação.', 199.90, 100);
   
