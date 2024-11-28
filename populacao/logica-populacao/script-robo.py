from datetime import datetime, timedelta
import random
from math import ceil
from faker import Faker

def get_values(txt):
    table_name = None
    components = None
    first = True
    with open(txt, 'r', encoding="utf-8") as f:
        data = f.readlines()
        all_values = []
        for line in data:
            if not line.startswith('INSERT INTO'):
                continue

            if first:
                table_name = line.split(' ')[2].strip()

                components = line.split(table_name)[1].split('VALUES')[0].strip()
                first = False

            if line.find('TRUE'):
                line = line.replace('TRUE', 'True')
            if line.find('FALSE') :
                line = line.replace('FALSE', 'False')

            values = line.split('VALUES')[-1].strip()
            
            values = values[0:len(values) -1]
           
            values = eval(values)
            all_values.append(values)
    return (table_name, components, all_values)

def write_values(txt, values):
    with open(txt, 'w', encoding="utf-8") as txt:
        for value in values[2]:
            txt.write(f"INSERT INTO {values[0]} {values[1]} VALUES {value};\n")

def test():
    get_values('acomodacao.sql')
    

def robo():
    robo_values = get_values('robo.sql')

    acomodacao_values = get_values('acomodacao.sql')

    reserva_values = get_values('reservaTentativa2.sql')

    #print(acomodacao_values)

    ocupadas = []

    for index, value in enumerate(acomodacao_values[2]):
        if value[1]:
            ocupadas.append(index+1)


    for index, value in enumerate(robo_values[2]):
        if value[4] not in ocupadas:
            lst = list(value)
            #print(value)
            lst[4] = random.choice(ocupadas)
            robo_values[2][index] = tuple(lst)
            #print(value)
        
        id_acomodacao = value[4]

        # procure na lista reserva_values[2] qual tupla tem, na posicao 4, o id_acomodacao
        # se encontrar, verifique se a data de value[2] esta entre a data de inicio e fim da reserva
        # se não estiver, altere a data de value[2] para a data de inicio da reserva + um valor aleatório entre o inicio e o fim da reserva
        # se puder usar uma biblioteca que permite o LINQ, melhor.

        for reserva in reserva_values[2]:
            if reserva[4] == id_acomodacao:
                date_reserva_inicio = datetime.strptime(reserva[1], "%Y-%m-%d").date()
                date_reserva_fim = datetime.strptime(reserva[2], "%Y-%m-%d").date()
                date_robo = datetime.strptime(value[2], "%Y-%m-%d").date()
                #print("Antes: ", robo_values[2][index] )
                #print("date_reserva_inicio <= date_robo <= date_reserva_fim", date_reserva_inicio <= date_robo <= date_reserva_fim)
                if not (date_reserva_inicio <= date_robo <= date_reserva_fim):
                    delta = random.randint(0, (date_reserva_fim - date_reserva_inicio).days)
                    new_date_robo = date_reserva_inicio + timedelta(days=delta)
                    lst = list(value)
                    lst[2] = new_date_robo.strftime("%Y-%m-%d")
                    robo_values[2][index] = tuple(lst)
                #print("Depois: ",robo_values[2][index] )
                break
    
    for index, value in enumerate(robo_values[2]):
        if value[4] not in ocupadas:
            lst = list(value)
            #print(value)
            lst[4] = random.choice(ocupadas)
            value = tuple(lst)
            #print(value)

    write_values('robo_correcto.sql', robo_values)

def clientes_reserva_quantidade():
    cliente_values = get_values('cliente.sql')
    reserva_values = get_values('reservaTentativa2.sql')

    cliente_ids = {}
    
    for index in range(1, 21):
        cliente_ids[index] = 0

    for index, value in enumerate(reserva_values[2]):
        cliente_ids[value[3]] += 1

    for index, value in enumerate(cliente_values[2]):
        lst = list(value)
        lst[3] =  pontos_hotel(cliente_ids[index+1])
        cliente_values[2][index] = tuple(lst)
        print(cliente_values[2][index])

    write_values('cliente_correcto.sql', cliente_values)

        
def pontos_hotel(n):
    blocos_completos = n // 5
    resto = n % 5
    soma_blocos = 5 * 5 * blocos_completos + 5 * (blocos_completos * (blocos_completos - 1)) // 2
    soma_resto = resto * (5 + blocos_completos)
    return soma_blocos + soma_resto

def func_sem_cargos():
    func_values = get_values('func_sem_cargo.sql')
    #print(func_values)

    func_values = (func_values[0], "(cpf, nome, contrato, cargo, salario, va, vr, vt, plano_saude, id_unidade)", func_values[2])

    cargos_obrigatorio_vdd = ["Gerente geral",
              "Gerente de RH",
              "Gerente de Compras",
              "Gerente de Recepção"
              ]
    
    cargos_obrigatorio = {}

    for i in range(1, 16):
        cargos_obrigatorio[i] = []

    cargos_nao_obrigatorio = [ 
              "Supervisor de governança", 
              "Supervisor de segurança",
              "Recepcionista",
              "Atendente de reservas", 
              "Conciierge", 
              "Mensageiros", 
              "Cozinheiro", 
              "Barman", 
              "Camareira",
              "Manobrista", 
    
              "Segurança",
              ]

    for index, value in enumerate(func_values[2]):
        id_unidade = value[8]

        already_has = False

        for cargo in cargos_obrigatorio_vdd:
            if cargo not in cargos_obrigatorio[id_unidade]:
                already_has = True
                cargos_obrigatorio[id_unidade].append(cargo)
                break

        
        if not already_has:
            weights = [5, 5, 30, 30, 30, 30, 30, 30, 30, 30, 30]
            cargo = random.choices(cargos_nao_obrigatorio, weights=weights, k=1)[0]
        value = list(value)
        value.insert(3, cargo)
        #print(value)
        func_values[2][index] = tuple(value)

    write_values('func_correcto_cargos.sql', func_values)

def func_salario_nome_cpf():
    func_values = get_values('func_salario_cpf_nome.sql')

    fake = Faker(['pt-BR'])
    print(fake.name())
    print(fake.random_number(digits=4))

    for index, value in enumerate(func_values[2]):
        cargo = value[3]
        salario = 0
        if "Gerente" in cargo:
            salario = random.randint(100, 150)
            va = random.randint(15, 20)
            vr = random.randint(15, 20)
            vt = random.randint(15, 20)
        elif "Supervisor" in cargo:
            salario = random.randint(50, 70)
            va = random.randint(10, 12)
            vr = random.randint(10, 12)
            vt = random.randint(10, 12)
        else:
            salario = random.randint(14, 30)
            va = random.randint(5, 7)
            vr = random.randint(5, 7)
            vt = random.randint(5, 7)

        salario = int(f"{salario}00")
        va = int(f"{va}00")
        vr = int(f"{vr}00")
        vt = int(f"{vt}00")
        # (cpf, nome, contrato, cargo, salario, va, vr, vt, plano_saude, id_unidade)

        value = list(value)
        value[0] = fake.ssn()
        value[1] = fake.name()
        value[4] = salario
        value[5] = va
        value[6] = vr
        value[7] = vt
        func_values[2][index] = tuple(value)
        print(func_values[2][index])

    write_values("func_salario_nome_cpf_correcto.sql",func_values)

def find(id, values):
    for index, value in enumerate(values[2]):
        if index+1 == id:
            return value
    
def solicita():
    
    def select_random_product(product_values):
        return random.choice(product_values[2])

    acomodacao_values = get_values('solicita/acomodacao.sql')
    dependencia_values = get_values('solicita/dependencia.sql')
    produto_values = get_values('solicita/produto.sql')
    reserva_values = get_values('solicita/reserva.sql')
    solicita_values = get_values('solicita/solicita.sql')
    unidade_values = get_values('solicita/unidade.sql')
    
    # ordem: selecionar um produto aleatório, pegar a dependencia, depois a unidade relacionada, escolher uma acomodacao aleatoria e 

    for index, value in enumerate(solicita_values[2]):
        random_product = select_random_product(produto_values)
        id_product = produto_values[2].index(random_product)+1
        #print("ID DO PRODUTO:", id_product, "NOME: ", random_product[0])
        #print(random_product)
        # (nome, valor, estoque, id_dependencia)
        id_dependencia = random_product[3]
        dependencia = find(id_dependencia, dependencia_values)
        #print(dependencia)
        # (manutencao, tamanho, hr__hr_inicio, hr__hr_fim, id_unidade)
        id_unidade = dependencia[4]

        id_acomodacoes = []
        for index2, value2 in enumerate(acomodacao_values[2]):
            if value2[6] == id_unidade:
                id_acomodacoes.append(index2+1)
        id_acomodacao = random.choice(id_acomodacoes)
            #id_acomodacoes.remove(id_acomodacao)
        #print(id_acomodacoes)
        id_reservas = []
        while id_reservas == []:
            # ACOMODACAO (tipo, status, limpeza, preco, politica_uso, capacidade_max, id_unidade)
            id_acomodacao = random.choice(id_acomodacoes)
            #print("acomodacao escolhida:", id_acomodacao)
            #id_acomodacoes.remove(id_acomodacao)
            # (valor, per_dt_inicio, per_dt_fim, id_cliente, id_acomodacao)
            for index2, value2 in enumerate(reserva_values[2]):
                if value2[4] == id_acomodacao:
                    id_reservas.append(index2+1)
        
        id_reserva = random.choice(id_reservas)
        #print("ID RESERVA: ", id_reserva,"ID ACOMODACAO: ", id_acomodacao, "ID PRODUTO: ", id_product, "ID_DEPENDECIA: ", id_dependencia)
        # (id_produto, id_reserva, quantidade)
        value = list(value)
        value[0] = id_product
        value[1] = id_reserva
        value[2] = random.randint(1, 8)
        solicita_values[2][index] = tuple(value)
    
    write_values("solicita/solicita_correcto.sql", solicita_values)

def frigobar():
    reservas_values = get_values('solicita/reserva.sql')
    frigobar_values = get_values('produto_frigobar.sql')

    acomodacao_in = set()
    frigobar = set()

    for value in frigobar_values[2]:
        frigobar.add(value[3])

    for value in reservas_values[2]:
        acomodacao_in.add(value[4])

    acomodacao_not = set(i for i in range(1, 201)) - acomodacao_in
    print(acomodacao_not)

    for index, value in enumerate(frigobar_values[2]):
        if value[3] in acomodacao_not:
            lst = list(value)
            lst[3] = random.choice(list(acomodacao_in))
            frigobar_values[2][index] = tuple(lst)

    frigobar_confirm = set()
    acomdacao_confirm = set()

    for value in frigobar_values[2]:
        frigobar_confirm.add(value[3])

    for value in reservas_values[2]:
        acomdacao_confirm.add(value[4])

    print(frigobar_confirm- acomdacao_confirm)

    write_values("produto_frigobar_correcto.sql", frigobar_values)

def consome():
    consome_values = get_values('consome.sql')
    reservas_hoje_passado_values = get_values('solicita/reserva.sql')
    produto_frigobar_values = get_values('produto_frigobar_correcto.sql')
    # (id_produto_frigobar, id_reserva, data, quantidade)

    consome_limpo = (consome_values[0], consome_values[1], [])

    added = {}

    for index, value in enumerate(consome_values[2]):
        id_reserva = value[1]
        # (id, per_dt_inicio, per_dt_fim, id_cliente, id_acomodacao)
        reserva = find(id_reserva, reservas_hoje_passado_values)
        dt_inicio = datetime.strptime(reserva[1], '%Y-%m-%d').date()
        dt_fim = datetime.strptime(reserva[2], '%Y-%m-%d').date()

        if dt_inicio > dt_fim:
            print("ERRO", dt_inicio, dt_fim)

        produtos_na_acomodacao = []
        for index2, values2 in enumerate(produto_frigobar_values[2]):
            if reserva[4] == values2[3]:
                produtos_na_acomodacao.append(index2+1)
        #print(produtos_na_acomodacao)

        if produtos_na_acomodacao == []:
            continue

        if (id_reserva, reserva[4]) in added:
            continue
        added[(id_reserva, reserva[4])] = 0

        # faça data ser aleatório entre dt_inicio e dt_fim com uma hora aleatoria tambem.
        random_date = dt_inicio + timedelta(days=random.randint(0, (dt_fim - dt_inicio).days))
        random_time = timedelta(hours=random.randint(0, 23), minutes=random.randint(0, 59), seconds=random.randint(0, 59))
        data = datetime.combine(random_date, datetime.min.time()) + random_time
        
        # (id_produto_frigobar, id_reserva, data, quantidade)
        value = list(value)
        value[0] = random.choice(produtos_na_acomodacao)
        value[2] = data.strftime('%Y-%m-%d %H:%M:%S')
        value[3] = random.randint(1, 8)
        #print(value)
        consome_limpo[2].append(tuple(value))

    write_values("consome_correcto.sql", consome_limpo)

def estaciona():
    estaciona_values = ("ESTACIONA", "(id_carro, data_inicio, diarias, tipo_vaga, id_dependencia)", [])
    acomodacao_values = get_values('estaciona/acomodacao.sql')
    carros_values = get_values('estaciona/carros.sql')
    reserva_values = get_values('estaciona/reserva.sql')
    dependencia_values = get_values('estaciona/dependencia.sql')

    already_carro = {}
    
    # (manutencao, tamanho, hr__hr_inicio, hr__hr_fim, id_unidade)
    estacionamentos = []

    for index, value in enumerate(dependencia_values[2]):
        if 33 <= index+1 <= 45:
            estacionamentos.append(value)

    print(estacionamentos)

    for _ in range(50):
        carro_id = random.randint(1, 55)
        while carro_id in already_carro:
            carro_id = random.randint(1, 55)
        already_carro[carro_id] = 0

        # (id_reserva, placa, entrada, saida)
        carro = find(carro_id, carros_values)
        id_reserva = carro[0]
        # (valor, per_dt_inicio, per_dt_fim, id_cliente, id_acomodacao)
        reserva = find(id_reserva, reserva_values)
        id_acomodacao = reserva[4]
        # (tipo, status, limpeza, preco, politica_uso, capacidade_max, id_unidade)
        acomodacao = find(id_acomodacao, acomodacao_values)
        id_unidade = acomodacao[6]
        id_dependencia = None
        for index, estacionamento in enumerate(estacionamentos):
            index += 33
            if id_unidade == estacionamento[4]:
                #print("UNIDADE:", id_unidade, "ESTACIONAMENTO: ", index)
                id_dependencia = index
                break
        
        if id_dependencia is None:
            print("deu ruim")
            continue
        
        # (id_carro, data_inicio, diarias, tipo_vaga, id_dependencia)

        dt_inicio = datetime.strptime(reserva[1], '%Y-%m-%d').date()
        dt_fim = datetime.strptime(reserva[2], '%Y-%m-%d').date()
        random_date = dt_inicio + timedelta(days=random.randint(0, (dt_fim - dt_inicio).days))
        
        # faça um número aleatório de diarias que precisa ser maior que random date e menor que dt_fim. O mínimo é 1.
        diarias = random.randint(ceil((dt_fim - random_date).days/2), (dt_fim - random_date).days)
        if diarias == 0: 
            diarias = 1
        value = (carro_id, random_date.strftime('%Y-%m-%d'), diarias, random.choice(["Coberta", "Ar livre"]), id_dependencia)
        estaciona_values[2].append(value)
    
    while len(estaciona_values[2]) > 35:
        estaciona_values[2].pop()

    write_values("estaciona/estaciona_correcto.sql", estaciona_values)

if __name__ == "__main__":
    estaciona()
    print("Fazendo alguma coisa...")
    #test()
