from flask_wtf import FlaskForm
from wtforms import IntegerField, SubmitField
from wtforms.validators import DataRequired, NumberRange
from app.config import Config


class QuestionForm(FlaskForm):
    answer = IntegerField('Your answer:', validators=[
        DataRequired(),
        NumberRange(min=Config.MIN*Config.MIN,
                    max=Config.MAX*Config.MAX,
                    message='Your answer is out of range.'
                    )])
    submit = SubmitField('Submit')


# TODO: Use the following instead of naked form.
"""
class GradeForm(FlaskForm):
    def __init__(self, button_text):
        self.submit = SubmitField(button_text)
        self.hidden = HiddenField("")
"""
