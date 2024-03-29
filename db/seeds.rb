require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database..."
Report.destroy_all
User.destroy_all
Review.destroy_all
puts "Database cleaned"

puts "Creating users"

user = User.create!(email: 'admin@admin.com', password: '123456', first_name: 'Admin', last_name: 'SFA', cpf:'123.456.789-10', phone_number:'(11) 99876-54321', admin: true, send_to_phone:'+5511000000000')
user0 = User.create!(email: 'guarda@guarda.com', password: '123456', first_name: 'Guarda', last_name: 'SFA', cpf:'234.567.891-23', phone_number:'(11) 997654-3210', role: true, send_to_phone:'+5511000000000')
user1 = User.create!(email: 'thiagomuta@hotmail.com', password: '123123', first_name: 'Thiago', last_name: 'Muta', cpf:'272.092.250-13', phone_number:'+5511942482030', role: true, send_to_phone:'+5511942482030')
user2 = User.create!(email: 'anapaulacury@hotmail.com', password: '123123', first_name: 'Ana', last_name: 'Paula', cpf:'015.704.470-04', phone_number:'(86)62920-7547', role: true, send_to_phone:'+5511000000000')
user3 = User.create!(email: 'tassohenrique@hotmail.com', password: '123123', first_name: 'Tasso', last_name: 'Rodrigues', cpf:'259.981.560-64', phone_number:'+55(67)9662-9006', role: true, send_to_phone:'+556796629006')
user4 = User.create!(email: 'allyssoncomin@hotmail.com', password: '123123', first_name: 'Allysson', last_name: 'Comin', cpf:'174.041.680-58', phone_number:'+55(67)9913-6550', role: true, send_to_phone:'+556799136550')
user5 = User.create!(email: 'anariccetti@hotmail.com', password: '123123', first_name: 'Ana', last_name: 'Riccetti', cpf:'136.307.170-04', phone_number:'(73)27399-4148', role: true, send_to_phone:'+5511000000000')
user6 = User.create!(email: 'eduardobrandiao@hotmail.com', password: '123123', first_name: 'Eduardo', last_name: 'Brandiao', cpf:'807.737.150-70', phone_number:'(38 14167-9192', role: true, send_to_phone:'+5511000000000')
user7 = User.create!(email: 'brunogabriel@hotmail.com', password: '123123', first_name: 'Bruno', last_name: 'Gabriel', cpf:'523.806.100-53', phone_number:'(12)20947-7198', role: true, send_to_phone:'+5511000000000')
user8 = User.create!(email: 'edcolen@hotmail.com', password: '123123', first_name: 'Ed', last_name: 'Colen', cpf:'493.020.050-46', phone_number:'(81)62820-0453', role: true, send_to_phone:'+5511000000000')
user9 = User.create!(email: 'emiliogirardi@hotmail.com', password: '123123', first_name: 'Emilio', last_name: 'Girardi', cpf:'493.020.050-46', phone_number:'(33)29699-9914', role: true, send_to_phone:'+5511000000000')
user10 = User.create!(email: 'felipebrasche@hotmail.com', password: '123123', first_name: 'Felipe', last_name: 'von Brasche', cpf:'918.890.920-45', phone_number:'(42)81117-2824', role: true, send_to_phone:'+5511000000000')
user11 = User.create!(email: 'giovannanunes@hotmail.com', password: '123123', first_name: 'Giovanna', last_name: 'Nunes', cpf:'504.362.710-79', phone_number:'(25)29798-1189', role: true, send_to_phone:'+5511000000000')
user12 = User.create!(email: 'giovanniguadagnucci@hotmail.com', password: '123123', first_name: 'Giovanni', last_name: 'Guadagnucci', cpf:'049.462.660-70', phone_number:'(45)46559-2776', role: true, send_to_phone:'+5511000000000')
user13 = User.create!(email: 'guilhermeteixeira@hotmail.com', password: '123123', first_name: 'Guilherme', last_name: 'Teixeira', cpf:'222.379.110-70', phone_number:'(60)32552-1601', role: true, send_to_phone:'+5511000000000')
user14 = User.create!(email: 'henriquemedeiros@hotmail.com', password: '123123', first_name: 'Henrique', last_name: 'Medeiros', cpf:'829.102.630-02', phone_number:'(22)28949-0668', role: true, send_to_phone:'+5511000000000')
user15 = User.create!(email: 'igorareco@hotmail.com', password: '123123', first_name: 'Igor', last_name: 'Areco', cpf:'658.870.880-79', phone_number:'(38)39996-5877', role: true, send_to_phone:'+5511000000000')
user16 = User.create!(email: 'igordepolli@hotmail.com', password: '123123', first_name: 'Igor', last_name: 'Depolli', cpf:'279.314.110-05', phone_number:'(47)31823-0992', role: true, send_to_phone:'+5511000000000')
user17 = User.create!(email: 'josecarlos@hotmail.com', password: '123123', first_name: 'Jose', last_name: 'Carlos', cpf:'258.124.160-87', phone_number:'(40)14828-0847', role: true, send_to_phone:'+5511000000000')
user18 = User.create!(email: 'kuxixima@hotmail.com', password: '123123', first_name: 'Kuxixima', last_name: 'Almeida', cpf:'322.396.080-56', phone_number:'(16)74763-7747', role: true, send_to_phone:'+5511000000000')
user19 = User.create!(email: 'pedromeyer@hotmail.com', password: '123123', first_name: 'Pedro', last_name: 'Meyer', cpf:'112.531.020-07', phone_number:'(56)70235-2251', role: true, send_to_phone:'+5511000000000')
user20 = User.create!(email: 'lucascamargo@hotmail.com', password: '123123', first_name: 'Lucas', last_name: 'Camargo', cpf:'715.745.730-04', phone_number:'(59)56352-8276', role: true, send_to_phone:'+5511000000000')
user21 = User.create!(email: 'marianamarinho@hotmail.com', password: '123123', first_name: 'Mariana', last_name: 'Marinho', cpf:'322.940.350-97', phone_number:'(25)34221-2168', role: true, send_to_phone:'+5511000000000')
user22 = User.create!(email: 'matleroux@hotmail.com', password: '123123', first_name: 'Mathieu', last_name: 'Le Roux', cpf:'777.059.410-31', phone_number:'(72)30350-6241', role: true, send_to_phone:'+5511000000000')
user23 = User.create!(email: 'milenecardoso@hotmail.com', password: '123123', first_name: 'Milene', last_name: 'Cardoso', cpf:'674.981.540-56', phone_number:'(56)51442-3982', role: true, send_to_phone:'+5511000000000')
user24 = User.create!(email: 'milleneprado@hotmail.com', password: '123123', first_name: 'Millene', last_name: 'Prado', cpf:'494.146.310-20', phone_number:'(15)25321-4999', role: true, send_to_phone:'+5511000000000')
user25 = User.create!(email: 'nathandebaz@hotmail.com', password: '123123', first_name: 'Nathan', last_name: 'Debaz', cpf:'181.869.840-46', phone_number:'(71)44243-6701', role: true, send_to_phone:'+5511000000000')
user26 = User.create!(email: 'netoconcon@hotmail.com', password: '123123', first_name: 'Neto', last_name: 'Concon', cpf:'699.644.870-02', phone_number:'(74)56997-7287', role: true, send_to_phone:'+5511000000000')
user27 = User.create!(email: 'nicolasenne@hotmail.com', password: '123123', first_name: 'Nicolas', last_name: 'Enne', cpf:'612.807.370-00', phone_number:'(22)40963-5011', role: true, send_to_phone:'+5511000000000')
user28 = User.create!(email: 'patykihara@hotmail.com', password: '123123', first_name: 'Paty', last_name: 'Kihara', cpf:'483.999.710-14', phone_number:'(89)23136-2007', role: true, send_to_phone:'+5511000000000')
user29 = User.create!(email: 'rafaelalonso@hotmail.com', password: '123123', first_name: 'Rafael', last_name: 'Alonso', cpf:'240.765.590-70', phone_number:'(51)49496-8735', role: true, send_to_phone:'+5511000000000')
user30 = User.create!(email: 'rafaelchun@hotmail.com', password: '123123', first_name: 'Rafael', last_name: 'Chun', cpf:'282.329.220-95', phone_number:'(10)35156-7767', role: true, send_to_phone:'+5511000000000')
user31 = User.create!(email: 'raphaelrodrigues@hotmail.com', password: '123123', first_name: 'Raphael', last_name: 'Cruz', cpf:'538.374.590-47', phone_number:'(19 38253-8546', role: true, send_to_phone:'+5511000000000')
user32 = User.create!(email: 'ricardohasenack@hotmail.com', password: '123123', first_name: 'Ricardo', last_name: 'Hasenack', cpf:'650.886.800-40', phone_number:'(50)25379-4725', role: true, send_to_phone:'+5511000000000')
user33 = User.create!(email: 'robertobarros@hotmail.com', password: '123123', first_name: 'Roberto', last_name: 'Barros', cpf:'079.495.920-28', phone_number:'(76)38486-1028', role: true, send_to_phone:'+5511000000000')
user34 = User.create!(email: 'taiguaramaran@hotmail.com', password: '123123', first_name: 'Taiguara', last_name: 'Maran', cpf:'002.175.270-27', phone_number:'(42)16305-6295', role: true, send_to_phone:'+5511000000000')
user35 = User.create!(email: 'thiagoyoussef@hotmail.com', password: '123123', first_name: 'Thiago', last_name: 'Youssef', cpf:'351.815.160-68', phone_number:'(36)21603-5671', role: true, send_to_phone:'+5511000000000')
user36 = User.create!(email: 'victorbrandao@hotmail.com', password: '123123', first_name: 'Victor', last_name: 'Brandao', cpf:'398.147.050-80', phone_number:'(77)68166-1794', role: true, send_to_phone:'+5511000000000')
user37 = User.create!(email: 'victormoreira@hotmail.com', password: '123123', first_name: 'Victor', last_name: 'Moreira', cpf:'292.171.730-10', phone_number:'(23)57635-2647', role: true, send_to_phone:'+5511000000000')
user38 = User.create!(email: 'enejota@hotmail.com', password: '123123', first_name: 'Neymar', last_name: 'Junior', cpf:'458.412.140-04', phone_number:'(64)84312-0790', role: true, send_to_phone:'+5511000000000')
user39 = User.create!(email: 'carlosaugusto@hotmail.com', password: '123123', first_name: 'Carlos', last_name: 'Augusto', cpf:'754.961.420-24', phone_number:'(19)37611-8924', role: true, send_to_phone:'+5511000000000')
user40 = User.create!(email: 'leonardoferreira@hotmail.com', password: '123123', first_name: 'Leonardo', last_name: 'Ferreira', cpf:'143.382.730-11', phone_number:'(77)27933-6321', role: true, send_to_phone:'+5511000000000')
user41 = User.create!(email: 'doidao7@hotmail.com', password: '123123', first_name: 'Fabio', last_name: 'Alves', cpf:'516.985.240-13', phone_number:'(33)68893-8043', role: true, send_to_phone:'+5511000000000')
user42 = User.create!(email: 'thierry@hotmail.com', password: '123123', first_name: 'Thierry', last_name: 'Fernando', cpf:'982.845.790-30', phone_number:'(40)73422-1067', role: true, send_to_phone:'+5511000000000')
user43 = User.create!(email: 'fabiomelo@hotmail.com', password: '123123', first_name: 'Fabio', last_name: 'Melo', cpf:'856.321.110-24', phone_number:'(81)85717-6444', role: true, send_to_phone:'+5511000000000')
user44 = User.create!(email: 'silvioaugusto@hotmail.com', password: '123123', first_name: 'Silvio', last_name: 'Augusto', cpf:'298.532.620-61', phone_number:'(22)50201-3016', role: true, send_to_phone:'+5511000000000')
user45 = User.create!(email: 'sergiotankian@hotmail.com', password: '123123', first_name: 'Sergio', last_name: 'Tankian', cpf:'597.851.150-03', phone_number:'(43)73975-7285', role: true, send_to_phone:'+5511000000000')
user46 = User.create!(email: 'magicjohnson@hotmail.com', password: '123123', first_name: 'Earvin', last_name: 'Johnson', cpf:'807.562.220-01', phone_number:'(28)75034-3670', role: true, send_to_phone:'+5511000000000')
user47 = User.create!(email: 'fernandomelo@hotmail.com', password: '123123', first_name: 'Fernando', last_name: 'Melo', cpf:'942.260.570-90', phone_number:'(23)44701-1962', role: true, send_to_phone:'+5511000000000')
user48 = User.create!(email: 'caiocastro@hotmail.com', password: '123123', first_name: 'Caio', last_name: 'Castro', cpf:'530.918.210-13', phone_number:'(64)43708-3250', role: true, send_to_phone:'+5511000000000')
user49 = User.create!(email: 'marinabarbosa@hotmail.com', password: '123123', first_name: 'Marina', last_name: 'Ruy Barbosa', cpf:'731.198.020-85', phone_number:'(87)61137-1050', role: true, send_to_phone:'+5511000000000')
user50 = User.create!(email: 'brunamarquezine@hotmail.com', password: '123123', first_name: 'Bruna', last_name: 'Marquezine', cpf:'952.566.440-68', phone_number:'(21)48274-0506', role: true, send_to_phone:'+5511000000000')

puts "Creating reports"
report1 = Report.create!(description: 'Motoqueiro atropelado', category: 'Acidente de Trânsito', danger_level:'3', address:'R. Mal. Barbacena, 1229 - Vila Reg. Feijó', latitude:'-23.551436', longitude:'-46.689363', user: user1)
report2 = Report.create!(description: 'Dois homens se estranhando no carro', category: 'Briga no Trânsito', danger_level:'1', address:'R. Serra de Juréa, 725 - Tatuapé', latitude:'-23.55054149131275', longitude:'--46.57043718725978', user: user2)
report3 = Report.create!(description: 'Briga generalizada', category: 'Briga na rua', danger_level:'4', address:'R. Brg. Machado, 62 - Brás', latitude:'-23.541559803081412', longitude:'-46.61357266048529', user: user3)
report4 = Report.create!(description: 'Marido pegou a mulher traindo', category: 'Briga Doméstica na rua', danger_level:'2', address:'Rua Dr. Jorge Miranda, 34', latitude:'-23.530936104693843', longitude:'-46.63169754699272', user: user4)
report5 = Report.create!(description: 'Dois estranhos trocando drogas', category: 'Tráfico de Drogas', danger_level:'5', address:'R. Tagipuru, 1060 - Barra Funda,', latitude:'-23.52596489429082', longitude:'-46.669802833500036', user: user5)
report6 = Report.create!(description: 'Um grupo de adolescentes fumando maconha', category: 'Utilização de Drogas em via Pública', danger_level:'2', address:'Rua Virgilio Wey, 150 - Água Branca', latitude:'-23.51120274505672', longitude:'-46.69636025834542', user: user6)
report7 = Report.create!(description: 'Minha bicicleta sumiu', category: 'Furto', danger_level:'1', address:'R. Nerópolis, 133 - Jardim Nordeste', latitude:'-23.53316820054743', longitude:'-46.48425499697211', user: user7)
report8 = Report.create!(description: 'Dois individuos mascarados roubaram meu carro', category: 'Assalto com arma de fogo', danger_level:'5', address:'R. Prof. Pinheiro Domingues, 513 - Vila Frugoli,', latitude:'-23.517943938564', longitude:'-46.49639114312057', user: user8)
report9 = Report.create!(description: 'Colisão entre duas bicicletas', category: 'Acidente de Trânsito', danger_level:'2', address:'Av. Rubens Fraga de Toledo Arruda, 142 - Eng. Goulart', latitude:'-23.501722511848257', longitude:'-46.5147478406616', user: user9)
report10 = Report.create!(description: 'O cara saiu do carro com um taco de beisebol', category: 'Briga no Trânsito', danger_level:'2', address:'R. Jovelina, 121 - Vila Domitila ', latitude:'-23.51275388613911', longitude:'-46.509749589357476', user: user10)
report11 = Report.create!(description: 'Molecada ta saindo no pau', category: 'Briga na rua', danger_level:'1', address:'Rua Coronel Melo de Oliveira, 226 - Pompeia ', latitude:'-23.53348519986129', longitude:'-46.68419865867574', user: user11)
report12 = Report.create!(description: 'Mulher pegou o marido com o vizinho', category: 'Briga Doméstica na rua', danger_level:'1', address:'R. Espártaco, 780 - Vila Romana,', latitude:'-23.529234579002114', longitude:'-46.69697171220739', user: user12)
report13 = Report.create!(description: 'Vi dois caras com um pacote estranho', category: 'Tráfico de Drogas', danger_level:'5', address:'R. Albion - Lapa', latitude:'-23.523493751858226', longitude:'-46.710821958675844', user: user13)
report14 = Report.create!(description: 'Tem uma mulher debaixo da ponte usando drogas', category: 'Utilização de Drogas em via Pública', danger_level:'2', address:'Tv. Misterioso Coração, 2 - Bela Aliança', latitude:'-23.522230847427846', longitude:'-46.72268825692604', user: user14)
report15 = Report.create!(description: 'Apontaram uma pistola e levaram minha mochila', category: 'Assalto com arma de fogo', danger_level:'5', address:'R. Santa Leonor, 44 - Jaguaré', latitude:'-23.5430203481882', longitude:'-46.75108097586215', user: user15)
report16 = Report.create!(description: 'O fusca furou o farol vermelho', category: 'Acidente de Trânsito', danger_level:'2', address:'R. André Thomas, 2-148 - Vila Campesina', latitude:'-23.54330839835314', longitude:'-46.76891567586218', user: user16)
report17 = Report.create!(description: 'Dois caras sairam na porrada', category: 'Briga na rua', danger_level:'1', address:'R. André Thomas, 2-148 - Vila Campesina', latitude:'-23.572029546385433', longitude:'-46.71771224702639', user: user17)
report18 = Report.create!(description: 'Duas velhas brigando de bengala', category: 'Briga na rua', danger_level:'1', address:'Av. Vasco da Rocha Leão, 442 - City Bussocaba', latitude:'-23.57217584515051', longitude:'-46.7812259316857', user: user18)
report19 = Report.create!(description: 'Duas irmãs brigando', category: 'Briga Doméstica na rua', danger_level:'2', address:'R. Paulo Antônio Camargo, 147 - Bussocaba', latitude:'-23.56515553430823', longitude:'-46.78864808935624', user: user19)
report20 = Report.create!(description: 'Deixaram um pacote na praça', category: 'Tráfico de Drogas', danger_level:'5', address:'R. Batataes, 543 - Jardim Paulista', latitude:'-23.569407689868413', longitude:'-46.658348368477064', user: user20)
report21 = Report.create!(description: 'Uma pessoa em situação de rua usando drogas', category: 'Utilização de Drogas em via Pública', danger_level:'2', address:'Alameda Casa Branca, 1060 - Cerqueira César', latitude:'-23.568810639665458', longitude:'-46.6630171979083', user: user21)
report22 = Report.create!(description: 'Atiraram pra cima e levaram o caixa eletronico', category: 'Assalto com arma de fogo', danger_level:'5', address:'R. Viradouro, 139 - Itaim Bibi', latitude:'-23.585508797603037', longitude:'-46.68116050674694', user: user22)
report23 = Report.create!(description: 'Um corsel fechou um corsa', category: 'Acidente de Trânsito', danger_level:'2', address:'R. Jacurici, 60 - Itaim Bibi', latitude:'-23.58466922420353', longitude:'-46.68595286242358', user: user23)
report24 = Report.create!(description: 'O padeiro ta batendo no boleiro', category: 'Briga na rua', danger_level:'1', address:'Rua Pintassilgo, 3 - Vila Uberabinha', latitude:'-23.599560185563355', longitude:'-46.670145833481214', user: user24)
report25 = Report.create!(description: 'Mulher brigando com a cunhada', category: 'Briga Doméstica na rua', danger_level:'3', address:'R. Benedito Lapin, 87 - Itaim Bibi', latitude:'-23.587306966509406', longitude:'-46.67331971271716', user: user25)
report26 = Report.create!(description: 'Um cara de bike, entregou um baseado pro rapaz', category: 'Tráfico de Drogas', danger_level:'5', address:'Rua Professor Roberto Hottinger, 26 - Jardim Paulistano', latitude:'-23.57178574838909', longitude:'-46.68453140846947', user: user26)
report27 = Report.create!(description: 'Tem um cara fumando crack', category: 'Utilização de Drogas em via Pública', danger_level:'2', address:'Av. Queiroz Filho, 1.700, Vila Hamburguesa', latitude:'-23.542542101887886', longitude:'-46.73292191860528', user: user27)
report28 = Report.create!(description: 'Torcedores do flamengo brigando com os do corinthians', category: 'Briga na rua', danger_level:'5', address:'R. Curupaiti, 367-151 - Vila Leopoldina,', latitude:'-23.524279278535854', longitude:'-46.72842437396233', user: user28)
report29 = Report.create!(description: 'Dois caras numa moto pegaram meu boné', category: 'Furto', danger_level:'2', address:'R. Maria Zélia, 146 - Vila Pirituba', latitude:'-23.502819736146765', longitude:'-46.71236411650939', user: user29)
report30 = Report.create!(description: 'Engavetamento', category: 'Acidente de Trânsito', danger_level:'2', address:'R. Luís de Andrade, 685 - Vila Pereira Barreto', latitude:'-23.491580512863784', longitude:'-46.71946577308889', user: user30)
report31 = Report.create!(description: 'Roubaram o Banco do Brasil', category: 'Assalto com arma de fogo', danger_level:'5', address:'R. Fausto Lex, 481 - Vila Zat', latitude:'-23.47891587819215', longitude:'-46.71693591216905', user: user31)
report32 = Report.create!(description: 'Vizinhos jogando pedra na casa dos outros', category: 'Briga Doméstica na rua', danger_level:'1', address:'R. Verbo Divino, 173 - Chácara Santo Antônio', latitude:'-23.637363040265274', longitude:'-46.69860971813775', user: user32)
report33 = Report.create!(description: 'Carteiro pistola com o cachorro', category: 'Briga na rua', danger_level:'2', address:'R. Hollywood, 321 - Itaim Bibi', latitude:'-23.61018246737227', longitude:'-46.68513616676133', user: user33)
report34 = Report.create!(description: 'Tem um cara vendendo droga ali na esquina', category: 'Tráfico de Drogas', danger_level:'5', address:'R. Padre José Viêira de Matos - Conjunto Habitacional COHAB 1', latitude:'-23.546897362400017', longitude:'-46.48098674512625', user: user34)
report35 = Report.create!(description: 'Tem dois caras brigando por causa de um lanche', category: 'Briga na rua', danger_level:'1', address:'Rua Waldemar Mancini, 61 - Itaquera', latitude:'-23.547086833295634', longitude:'-46.46082029940678', user: user35)
report36 = Report.create!(description: 'Meu vizinho ta fumando droga na frente da igreja', category: 'Utilização de Drogas em via Pública', danger_level:'2', address:'Travessa Maestro Melartin, 72 - Vila Carmosina', latitude:'-23.55442821194587', longitude:'-46.449639273961814', user: user36)
report37 = Report.create!(description: 'Um Uno com uma escada bateu em uma ferrari', category: 'Acidente de Trânsito', danger_level:'2', address:'R. Aranha de Vasconcelos, 142 - Jardim Nossa Sra. do Carmo', latitude:'-23.569996539870715', longitude:'-46.474003133481894', user: user37)
report38 = Report.create!(description: 'Ladrão levou meu cachorro', category: 'Assalto com arma de fogo', danger_level:'5', address:'R. Euclídes Antônio de Souza, 243-167 - Jardim das Rosas', latitude:'-23.586677867225532', longitude:'-46.51197097581042', user: user38)
report39 = Report.create!(description: 'Pai batendo no filho', category: 'Briga Doméstica na rua', danger_level:'2', address:'Av. Antônio Manograsso, 91 - Chácara Belenzinho', latitude:'-23.578289188408057', longitude:'-46.53751094697498', user: user39)
report40 = Report.create!(description: 'Roubaram a roda do meu carro', category: 'Furto', danger_level:'3', address:'R. Rio Real, 116-242 - Vila Formosa', latitude:'-23.566793969053755', longitude:'-46.55084627581081', user: user40)
report41 = Report.create!(description: 'Briga generalizada por causa do preço da gasolina', category: 'Briga na rua', danger_level:'4', address:'Av. Paes de Barros - Parque da Mooca', latitude:'-23.5703092172207', longitude:'-46.58782356661978', user: user41)
report42 = Report.create!(description: 'Briga entre torcida organizada de boliche', category: 'Briga na rua', danger_level:'3', address:'R. Marina Crespi, 174-334 - Mooca', latitude:'-23.556453424238573', longitude:'-46.604444031632845', user: user42)
report43 = Report.create!(description: 'Motociclista furou o farol vermelho', category: 'Acidente de Trânsito', danger_level:'4', address:'R. Havana, 144 - Taboão, Diadema', latitude:'-23.67560115296766', longitude:'-46.611032800238036', user: user43)
report44 = Report.create!(description: 'Usuario de drogas', category: 'Utilização de Drogas em via Pública', danger_level:'3', address:'R. Padre Inácio Siqueira, 413 - Vila Nogueira, Diadema', latitude:'-23.68702402194358', longitude:'-46.59847619570551', user: user44)
report45 = Report.create!(description: 'Vizinhos bravos por causa de cachorros', category: 'Briga Doméstica na rua', danger_level:'2', address:'R. Natalino Fabrini, 2-138 - Dos Casa', latitude:'-23.72853972602529', longitude:'-46.571509060464265', user: user45)
report46 = Report.create!(description: 'Dois marmanjos brigando por causa de uma mulher', category: 'Briga na rua', danger_level:'2', address:'Passagem Cajueiro, 24-86 - Inamar, Diadema', latitude:'-23.728510260488864', longitude:'-46.57154124697116', user: user46)
report47 = Report.create!(description: 'Tem alguem fumando maconha por aqui', category: 'Utilização de Drogas em via Pública', danger_level:'2', address:'R. Ângela Maçon Bonício, 83 - Cooperativa, São Bernardo do Campo', latitude:'-23.720123846576158', longitude:'-46.594429150659685', user: user47)
report48 = Report.create!(description: 'Furtaram o meu chinelo', category: 'Furto', danger_level:'3', address:'Rua Padre José Garzotti, 342 - Cidade Dutra', latitude:'-23.71037504608548', longitude:'-46.701466134688125', user: user48)
report49 = Report.create!(description: 'Carro estragou e causou acidente', category: 'Acidente de Trânsito', danger_level:'2', address:'Rua Turquesa, 30 - Jardim Capao Redondo', latitude:'-23.67736865799807', longitude:'-46.78283788253114', user: user49)
report50 = Report.create!(description: 'Dois caminhoes cheio de droga', category: 'Tráfico de Drogas', danger_level:'5', address:'Rua Alvorada, 202 - Jardim Sao Eduardo, Embu das Artes', latitude:'-23.670149601803523', longitude:'-46.80260121018091', user: user50)

50.times do |i|
  lati = 51 + i
  report = Report.create!(
    description: Faker::ChuckNorris.fact,
    category: ["Acidente de Trânsito", "Briga no Trânsito", "Briga na rua", "Briga Doméstica na rua", "Tráfico de Drogas", "Utilização de Drogas em via Pública", "Furto", "Assalto com arma de fogo"].sample,
    danger_level: rand(1..5),
    address: Faker::Address.street_address,
    latitude: "-23.5#{lati}164466",
    longitude: "-46.633664132",
    user: [user1, user2, user3, user4, user5, user6].sample
  )
  puts "Primeiro report >> #{i} de 50"
end

sleep(60)

50.times do |i|
  lati = 51 - i
  report = Report.create!(
    description: Faker::ChuckNorris.fact,
    category: ["Acidente de Trânsito", "Briga no Trânsito", "Briga na rua", "Briga Doméstica na rua", "Tráfico de Drogas", "Utilização de Drogas em via Pública", "Furto", "Assalto com arma de fogo"].sample,
    danger_level: rand(1..5),
    address: Faker::Address.street_address,
    latitude: "-23.5#{lati}164466",
    longitude: "-46.633664132",
    user: [user1, user2, user3, user4, user5, user6].sample
  )
  puts "Segundo report >> #{i} de 50"
end

sleep(60)

336.times do |i|
  lati = 51 + i
  long = 336 + i
  report = Report.create!(
    description: Faker::ChuckNorris.fact,
    category: ["Acidente de Trânsito", "Briga no Trânsito", "Briga na rua", "Briga Doméstica na rua", "Tráfico de Drogas", "Utilização de Drogas em via Pública", "Furto", "Assalto com arma de fogo"].sample,
    danger_level: rand(1..5),
    address: Faker::Address.street_address,
    latitude: "-23.5#{lati}164466",
    longitude: "-46.6#{long}64132",
    user: [user1, user2, user3, user4, user5, user6].sample
  )
  puts "Terceiro report >> #{i} de 336"
end

sleep(60)

336.times do |i|
  lati = 351 + i
  long = 336 - i
  report = Report.create!(
    description: Faker::ChuckNorris.fact,
    category: ["Acidente de Trânsito", "Briga no Trânsito", "Briga na rua", "Briga Doméstica na rua", "Tráfico de Drogas", "Utilização de Drogas em via Pública", "Furto", "Assalto com arma de fogo"].sample,
    danger_level: rand(1..5),
    address: Faker::Address.street_address,
    latitude: "-23.5#{lati}164466",
    longitude: "-46.6#{long}64132",
    user: [user1, user2, user3, user4, user5, user6].sample
  )
  puts "Quarto report >> #{i} de 336"
end

sleep(60)

300.times do |i|
  lati = 51 + i
  long = 636 - i
  report = Report.create!(
    description: Faker::ChuckNorris.fact,
    category: ["Acidente de Trânsito", "Briga no Trânsito", "Briga na rua", "Briga Doméstica na rua", "Tráfico de Drogas", "Utilização de Drogas em via Pública", "Furto", "Assalto com arma de fogo"].sample,
    danger_level: rand(1..5),
    address: Faker::Address.street_address,
    latitude: "-23.#{lati}9588",
    longitude: "-46.#{long}820",
    user: [user1, user2, user3, user4, user5, user6].sample
  )
  puts "Quinto report >> #{i} de 300"
end

sleep(60)

300.times do |i|
  lati = 51 + i
  long = 636 + i
  report = Report.create!(
    description: Faker::ChuckNorris.fact,
    category: ["Acidente de Trânsito", "Briga no Trânsito", "Briga na rua", "Briga Doméstica na rua", "Tráfico de Drogas", "Utilização de Drogas em via Pública", "Furto", "Assalto com arma de fogo"].sample,
    danger_level: rand(1..5),
    address: Faker::Address.street_address,
    latitude: "-23.#{lati}9588",
    longitude: "-46.#{long}820",
    user: [user1, user2, user3, user4, user5, user6].sample
  )
  puts "Sexto report >> #{i} de 300"
end

sleep(60)

300.times do |i|
  lati = 351 - i
  long = 636 + i
  report = Report.create!(
    description: Faker::ChuckNorris.fact,
    category: ["Acidente de Trânsito", "Briga no Trânsito", "Briga na rua", "Briga Doméstica na rua", "Tráfico de Drogas", "Utilização de Drogas em via Pública", "Furto", "Assalto com arma de fogo"].sample,
    danger_level: rand(1..5),
    address: Faker::Address.street_address,
    latitude: "-23.#{lati}9588",
    longitude: "-46.#{long}820",
    user: [user1, user2, user3, user4, user5, user6].sample
  )
  puts "Sétimo report >> #{i} de 300"
end

sleep(60)

300.times do |i|
  lati = 351 - i
  long = 636 - i
  report = Report.create!(
    description: Faker::ChuckNorris.fact,
    category: ["Acidente de Trânsito", "Briga no Trânsito", "Briga na rua", "Briga Doméstica na rua", "Tráfico de Drogas", "Utilização de Drogas em via Pública", "Furto", "Assalto com arma de fogo"].sample,
    danger_level: rand(1..5),
    address: Faker::Address.street_address,
    latitude: "-23.#{lati}9588",
    longitude: "-46.#{long}820",
    user: [user1, user2, user3, user4, user5, user6].sample
  )
  puts "Oitavo report >> #{i} de 300"
end

puts "Creating reviews"
review1 = Review.create!(content: 'O motorista saiu correndo', user: user50, report: report1)
review2 = Review.create!(content: 'Partiram pra porrada', user: user49, report: report2)
review3 = Review.create!(content: 'Chegou a policia, tudo resolvido', user: user48, report: report3)
review4 = Review.create!(content: 'A familia da mulher chegou e resolveu a treta, foi engano', user: user47, report: report4)
review5 = Review.create!(content: 'Os caras estavam de capuz, e parecia um baseado', user: user46, report: report5)
review6 = Review.create!(content: 'Bando de molecada, alguem chama a policia', user: user45, report: report6)
review7 = Review.create!(content: 'Eu vi um cara correndo de forma suspeita', user: user44, report: report7)
review8 = Review.create!(content: 'Eu vi, deixaram o carro umas 10 quadras pra frente', user: user43, report: report8)
review9 = Review.create!(content: 'Os caras tavam sem freio!', user: user42, report: report9)
review10 = Review.create!(content: 'O cara ta puto, porque buzinaram no engarrafamento', user: user41, report: report10)
review11 = Review.create!(content: 'Gurizada brigando por causa do jogo de futebol', user: user40, report: report11)
review12 = Review.create!(content: 'Não culpo ele, o vizinho era é gostoso', user: user39, report: report12)
review13 = Review.create!(content: 'Acho que pode ser drogas', user: user38, report: report13)
review14 = Review.create!(content: 'Nem me chamou!', user: user37, report: report14)
review15 = Review.create!(content: 'Eu vi o cara correndo pra direção sul', user: user36, report: report15)
review16 = Review.create!(content: 'Tinha que ser corinthiano', user: user35, report: report16)
review17 = Review.create!(content: 'Chamaram ele de bolsominion', user: user34, report: report17)
review18 = Review.create!(content: 'Uma era a minha vó!', user: user33, report: report18)
review19 = Review.create!(content: 'A mais velha deve ter pego roupa emprestada e não devolvido', user: user32, report: report19)
review20 = Review.create!(content: 'Pode ser uma bomba terrorista', user: user31, report: report20)
review21 = Review.create!(content: 'Eu conheço ele, não é um mendigo e não é droga', user: user30, report: report21)
review22 = Review.create!(content: 'Foi um lindo assalto', user: user29, report: report22)
review23 = Review.create!(content: 'Foi um grande bate-boca', user: user28, report: report23)
review24 = Review.create!(content: 'Haja farinha!', user: user27, report: report24)
review25 = Review.create!(content: 'Comeu o pedaço de bolo dela', user: user26, report: report25)
review26 = Review.create!(content: 'Maconha não é droga!', user: user25, report: report26)
review27 = Review.create!(content: 'E nem estamos na cracolandia', user: user24, report: report27)
review28 = Review.create!(content: 'Imagina na copa', user: user23, report: report28)
review29 = Review.create!(content: 'Era um bone de aba reta', user: user22, report: report29)
review30 = Review.create!(content: 'Todo mundo batendo na bundinha do outro', user: user21, report: report30)
review31 = Review.create!(content: 'Bem feito!', user: user20, report: report31)
review32 = Review.create!(content: 'Acertaram minha cabeça', user: user19, report: report32)
review33 = Review.create!(content: 'Carteiro tem razão, o cachorro mordeu ele', user: user18, report: report33)
review34 = Review.create!(content: 'É o meu irmão', user: user17, report: report34)
review35 = Review.create!(content: 'Inacreditavel', user: user16, report: report35)
review36 = Review.create!(content: 'Deus abençoe', user: user15, report: report36)
review37 = Review.create!(content: 'Se fodeu!', user: user14, report: report37)
review38 = Review.create!(content: 'Pega esse arrombado', user: user13, report: report38)
review39 = Review.create!(content: 'O pai não sabe porque ta batendo, mas o filho sabe porque ta apanhando', user: user12, report: report39)
review40 = Review.create!(content: 'Quer carona?', user: user11, report: report40)
review41 = Review.create!(content: 'TA TODO MUNDO CERTO, OLHA O PREÇO', user: user10, report: report41)
review42 = Review.create!(content: 'Bolas por todos os lados', user: user9, report: report42)
review43 = Review.create!(content: 'Ele era daltonico', user: user8, report: report43)
review44 = Review.create!(content: 'Nem vi', user: user7, report: report44)
review45 = Review.create!(content: 'Os cachorros não calam a boca', user: user6, report: report45)
review46 = Review.create!(content: 'Cade a mulher?', user: user5, report: report46)
review47 = Review.create!(content: 'Deve ser voce', user: user4, report: report47)
review48 = Review.create!(content: 'E era de marca', user: user3, report: report48)
review49 = Review.create!(content: 'Coitado!', user: user2, report: report49)
review50 = Review.create!(content: 'Estão indo pro Paraguai!', user: user1, report: report50)
