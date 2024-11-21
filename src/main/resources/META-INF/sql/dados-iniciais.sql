-- Ramos de atividade
insert into ramo_atividade (id, descricao) values (21, 'Agricultura');
insert into ramo_atividade (id, descricao) values (22, 'Varejo');
insert into ramo_atividade (id, descricao) values (23, 'Logística');
insert into ramo_atividade (id, descricao) values (24, 'Cultura');
insert into ramo_atividade (id, descricao) values (25, 'Construção');
insert into ramo_atividade (id, descricao) values (26, 'Petróleo e Gás');
insert into ramo_atividade (id, descricao) values (27, 'Seguros');
insert into ramo_atividade (id, descricao) values (28, 'Financeiro');
insert into ramo_atividade (id, descricao) values (29, 'Metalúrgico');
insert into ramo_atividade (id, descricao) values (30, 'Tecnologia');
insert into ramo_atividade (id, descricao) values (31, 'Imobiliária');
insert into ramo_atividade (id, descricao) values (32, 'Beleza');
insert into ramo_atividade (id, descricao) values (33, 'Moda');
insert into ramo_atividade (id, descricao) values (34, 'Turismo e Lazer');
insert into ramo_atividade (id, descricao) values (35, 'Comunicação');
insert into ramo_atividade (id, descricao) values (36, 'Publicidade Digital');
insert into ramo_atividade (id, descricao) values (37, 'Indústria Alimentícia');
insert into ramo_atividade (id, descricao) values (38, 'Saúde Animal');
insert into ramo_atividade (id, descricao) values (39, 'Transportes Públicos');
insert into ramo_atividade (id, descricao) values (40, 'Automação');
insert into ramo_atividade (id, descricao) values (41, 'E-commerce');
insert into ramo_atividade (id, descricao) values (42, 'Restaurantes');
insert into ramo_atividade (id, descricao) values (43, 'Eventos');
insert into ramo_atividade (id, descricao) values (44, 'Desenvolvimento de Software');
insert into ramo_atividade (id, descricao) values (45, 'Esportes');
insert into ramo_atividade (id, descricao) values (46, 'Música');
insert into ramo_atividade (id, descricao) values (47, 'Saúde e Bem-estar');
insert into ramo_atividade (id, descricao) values (48, 'Serviços Profissionais');
insert into ramo_atividade (id, descricao) values (49, 'Serviços Domésticos');
insert into ramo_atividade (id, descricao) values (50, 'Indústria Química');


-- Empresas para ramos de atividade
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (15, '90.943.469/0001-57', 'Agricultura Verde', 'Agricultura Verde Ltda', 'LTDA', '2017-11-15', 21);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (16, '56.243.570/0001-67', 'Super Varejo', 'Supermercados Varejo S.A.', 'SA', '2015-06-12', 22);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (17, '57.348.271/0001-50', 'Logística Rápida', 'Logística Rápida Ltda', 'LTDA', '2012-03-10', 23);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (18, '94.442.841/0001-00', 'Cultura Viva', 'Cultura Viva Eventos Ltda', 'LTDA', '2014-07-05', 24);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (19, '77.788.590/0001-93', 'Construtora Alfa', 'Construtora Alfa S.A.', 'SA', '2010-02-20', 25);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (20, '36.430.296/0001-28', 'Petróleo Brasil', 'Petróleo Brasil S.A.', 'SA', '2008-09-15', 26);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (21, '46.809.962/0001-97', 'Seguros Life', 'Seguros Life S.A.', 'SA', '2015-05-10', 27);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (22, '73.624.597/0001-19', 'Banco Verde', 'Banco Verde Ltda', 'LTDA', '2012-01-12', 28);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (23, '63.103.603/0001-39', 'Metalúrgica ABC', 'Metalúrgica ABC S.A.', 'SA', '2010-03-25', 29);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (24, '36.207.407/0001-31', 'Tech Innovations', 'Tech Innovations Ltda', 'LTDA', '2020-04-07', 30);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (25, '80.124.764/0001-28', 'Imóveis Primeiro', 'Imóveis Primeiro Ltda', 'LTDA', '2013-09-25', 31);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (26, '05.046.094/0001-53', 'Beleza em Foco', 'Beleza em Foco Ltda', 'LTDA', '2014-03-15', 32);
insert into empresa (id, cnpj, nome_fantasia, razao_social, tipo, data_fundacao, ramo_atividade_id) values (27, '76.457.680/0001-39', 'FashionStyle', 'FashionStyle Ltda', 'LTDA', '2017-11-01', 33);
insert into empresa (id, cnpj, nome_fantasia
