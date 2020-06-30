# Generated by Django 3.0.4 on 2020-04-27 22:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Notification', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Curso',
            fields=[
                ('idcurso', models.AutoField(primary_key=True, serialize=False)),
                ('nome', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'curso',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='HorarioHasDia',
            fields=[
                ('id_dia_hora', models.AutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'horario_has_dia',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Paragem',
            fields=[
                ('paragem', models.CharField(max_length=45, primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'paragem',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SessaoHasHorarioHasDia',
            fields=[
                ('sessao_has_horario_has_dia_id', models.AutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'sessao_has_horario_has_dia',
                'managed': False,
            },
        ),
    ]
