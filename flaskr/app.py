import os
from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, DateField
from wtforms.validators import DataRequired
from flask import Flask, render_template, request, redirect, url_for

from notebooks import utils
from notebooks.model.Animal import Animal
from notebooks.model.Especie import Especie
from notebooks.DAO import animaisDAO, especiesDAO

app = Flask(__name__)

SECRET_KEY = os.urandom(32)
app.config['SECRET_KEY'] = SECRET_KEY


@app.route('/')
def index():
    return render_template("index.html")


class AnimalForm(FlaskForm):
    nomeanimal = StringField("Nome", validators=[DataRequired()])
    codespecie = StringField("Cod Especie", validators=[DataRequired()])
    codanimal = IntegerField("Cod Animal")
    codanimalpai = IntegerField("Cod Pai")
    codanimalmae = IntegerField("Cod Mae")
    dtnascanimal = DateField("Data", validators=[DataRequired()])


class EspecieForm(FlaskForm):
    codespecie = IntegerField("Cod Especie", validators=[DataRequired()])
    nomeespecie = StringField("Nome Especie", validators=[DataRequired()])
    expectativaespecie = IntegerField("Expectativa De Vida", validators=[DataRequired()])


@app.route('/animais', methods=['GET', 'POST'])
def animais():
    column_names = utils.column_names('animais')

    animal_form = AnimalForm(request.form)
    if request.method == 'POST':
        vals = [animal_form.data[col] for col in column_names]
        animal = Animal(*vals)
        animaisDAO.insert(animal)
        if animal.codanimal is None:
            animaisDAO.insert(animal)
        else:
            animaisDAO.update(animal)
        return redirect(url_for('animais'))

    row_data = animaisDAO.select_all()
    return render_template("Animais.html", column_names=column_names, row_data=row_data, form=animal_form)


@app.route('/especies', methods=['GET', 'POST'])
def especies():
    column_names = utils.column_names('especies')

    especie_form = EspecieForm(request.form)
    if request.method == 'POST':
        vals = [especie_form.data[col] for col in column_names]
        especie = Especie(*vals)
        if especie.codespecie is None:
            especiesDAO.insert(especie)
        else:
            especiesDAO.update(especie)
        return redirect(url_for('especies'))

    row_data = especiesDAO.select_all()
    return render_template("Especies.html", column_names=column_names, row_data=row_data, form=especie_form)


@app.route('/AnimaisEspecies')
def animais_especies():
    return render_template("AnimaisEspecies.html")


@app.route('/AnimaisPorEspecie')
def animais_por_especie():
    return render_template("AnimaisPorEspecie.html")


if __name__ == '__main__':
    app.run()
