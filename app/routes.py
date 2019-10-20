from flask import render_template, flash, redirect
from app import app
from app.forms import QuestionForm
from app.models import Equation, equation


@app.route('/', methods=['GET', 'POST'])
@app.route('/index', methods=['GET', 'POST'])
def index():
    (a, b) = equation.getAB()
    question = "{} x {} = ?".format(a, b)
    form = QuestionForm()
    if form.validate_on_submit():
        flash('Data received: {}'.format(form.answer.data))
        equation.tryAnswer(int(form.answer.data))
        return redirect('/grade')
    return render_template('index.html', question=question, form=form)


@app.route('/grade', methods=['GET', 'POST'])
def grade():
    if equation.getStatus() == Equation.CORRECT:
        grade = "Correct!"
        button_text = "Next"
        equation.reset()
    elif equation.getStatus() == Equation.INCORRECT:
        (a, b) = equation.getAB()
        grade = "Incorrect. {}x{}={}. Keep trying!".format(a, b, a*b)
        button_text = "Retry"
    else:  # NEW
        redirect('/index')
    return render_template('grade.html',
                           grade=grade,
                           button_text=button_text)
