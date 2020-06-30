import unittest
from blog.models import *

class TestModels(unittest.TestCase):

    def test_Disponibilidade(self):
        ut=Utilizador.objects.create(nome="Colab",email="colab@gmail.com",telefone="927797504",password="0afb00138d8e73348ec1fe41fd3d3a8fcbd90156b263bfa5791ba0e095f42cfc",validada=1)
        dia=Dia.objects.create(dia='2020-05-20')
        hora=Horario.objects.create(hora='12:00:00')
        hora1=Horario.objects.create(hora='12:30:00')
        campus=Campus.objects.create(nome="Gambelas")
        uo=UnidadeOrganica.objects.create(sigla="FCT",campus_idcampus=campus)
        curso=Curso.objects.create(nome="LEI",unidade_organica_iduo=uo)
        colab=Colaborador.objects.create(pk=ut.pk,curso_idcurso=curso)
        disp=Disponibilidade.objects.create(colaborador_utilizador_idutilizador=colab,dia_dia=dia, horario_hora=hora, horario_hora1=hora1, tipo_de_tarefa="Tarefa test")
        self.assertEquals(Disponibilidade.objects.filter(pk=disponibilidade_id).exists(),True)
        ut.delete()
        dia.delete()
        hora.delete()
        hora1.delete()
        campus.delete()
        uo.delete()
        curso.delete()
        colab.delete()
        disp.delete()

    def test_Utilizador(self):
        ut=Utilizador.objects.create(nome="Colab",email="colab@gmail.com",telefone="927797504",password="0afb00138d8e73348ec1fe41fd3d3a8fcbd90156b263bfa5791ba0e095f42cfc",validada=1)
        self.assertEquals(Disponibilidade.objects.filter(pk=idutilizador).exists(),True)
        ut.delete()

    def test_Colaborador(self):
        campus=Campus.objects.create(nome="Gambelas")
        uo=UnidadeOrganica.objects.create(sigla="FCT",campus_idcampus=c)
        curso=Curso.objects.create(nome="LEI",unidade_organica_iduo=uo)
        ut=Utilizador.objects.create(nome="Colab",email="colab@gmail.com",telefone="927797504",password="0afb00138d8e73348ec1fe41fd3d3a8fcbd90156b263bfa5791ba0e095f42cfc",validada=1)
        colab=Colaborador.objects.create(pk=u.pk,curso_idcurso=p)
        self.assertEquals(Colaborador.objects.filter(pk=ut.pk).exists(),True)
        campus.delete()
        uo.delete()
        curso.delete()
        ut.delete()
        colab.delete()

    def test_Sala(self):
        campus=Campus.objects.create(nome="Gambelas")
        espaco=Espaco.objects.create(nome="Sala",campus_idcampus=campus, img="Nada")
        sala=Sala.objects.create(edificio="Edifício 1",andar="1º",gabinete="A",espaco_idespaco=espaco)
        self.assertEquals(Sala.objects.filter(pk=sala.pk).exists(),True)
        campus.delete()
        espaco.delete()
        sala.delete()

    def test_Afiteatro(self):
        campus=Campus.objects.create(nome="Gambelas")
        espaco=Espaco.objects.create(nome="Anfiteatro",campus_idcampus=campus, img="images/frases-bonitas-1000x500.jpg")
        anfi=Anfiteatro.objects.create(edificio="Edifício 1",andar="1º",espaco_idespaco=espaco)
        self.assertEquals(Sala.objects.filter(pk=anfi.pk).exists(),True)
        campus.delete()
        espaco.delete()
        sala.delete()

    def test_Arlivre(self):
        campus=Campus.objects.create(nome="Gambelas")
        espaco=Espaco.objects.create(nome="Rua",campus_idcampus=campus, img="images/frases-bonitas-1000x500.jpg")
        ar=Arlivre.objects.create(descricao="Na rua ao sol",espaco_idespaco=espaco)
        self.assertEquals(Sala.objects.filter(pk=ar.pk).exists(),True)
        campus.delete()
        espaco.delete()
        ar.delete()

    def test_Tarefa(self):
        hora=Horario.objects.create(hora='12:00:00')
        dia=Dia.objects.create(dia='2020-05-20')
        horario=HorarioHasDia.objects.create(horario_hora=hora, dia_dia=dia)
        campus=Campus.objects.create(nome="Gambelas")
        uo=UnidadeOrganica.objects.create(sigla="FCT",campus_idcampus=campus)
        dep=Departamento.objects.create(nome="DEI",unidade_organica_iduo=uo)
        ut_prof=Utilizador.objects.create(nome="Prof",email="prof@gmail.com",telefone="927797502",password="0afb00138d8e73348ec1fe41fd3d3a8fcbd90156b263bfa5791ba0e095f42cfc",validada=3)
        espaco=Espaco.objects.create(nome='Sala 1.1', campus_idcampus=campus, img='images/frases-bonitas-1000x500.jpg')
        prof=ProfessorUniversitario.objects.create(pk=ut_prof.pk,departamento_iddepartamento=dep)
        ut_coord=Utilizador.objects.create(nome="Coord",email="coord2@hotmail.com",telefone="927797503",password="0afb00138d8e73348ec1fe41fd3d3a8fcbd90156b263bfa5791ba0e095f42cfc",validada=2)
        coord=Coordenador.objects.create(pk=ut_coord.pk,unidade_organica_iduo=uo)
        curso=Curso.objects.create(nome="LEI",unidade_organica_iduo=uo)
        ut_colab=Utilizador.objects.create(nome="Colab",email="colab@hotmail.com",telefone="927797504",password="0afb00138d8e73348ec1fe41fd3d3a8fcbd90156b263bfa5791ba0e095f42cfc",validada=1)
        colab=Colaborador.objects.create(pk=ut_colab.pk,curso_idcurso=curso)
        atividade=Atividade.objects.create(titulo='Python', capacidade=20, publico_alvo="Estudantes", duracao=30, descricao="brincadeirinha", validada=1, professor_universitario_utilizador_idutilizador=prof,
        unidade_organica_iduo=uo, departamento_iddepartamento=dep, espaco_idespaco=espaco, tematica="tema", nrcolaborador=1)
        sessao=Sessao.objects.create(nrinscritos=7, capacidade=20,atividade_idatividade=atividade,horario_has_dia_id_dia_hora=horario)
        tarefa=Tarefa.objects.create(nome="Tarefa teste",concluida=0,coordenador_utilizador_idutilizador=coord,colaborador_utilizador_idutilizador=colab,sessao_idsessao=sessao)
        self.assertEquals(Tarefa.objects.filter(pk=tarefa.pk).exists(),True)
        hora.delete()
        dia.delete()
        horario.delete()
        campus.delete()
        uo.delete()
        dep.delete()
        ut_prof.delete()
        espaco.delete()
        prof.delete()
        ut_coord.delete()
        coord.delete()
        curso.delete()
        ut_colab.delete()
        colab.delete()
        atividade.delete()
        sessao.delete()
        tarefa.delete()