from django import forms
from Alumni_Portal.utils import password_validator,db

from django.core.validators import validate_email


class SignUpForm(forms.Form):
    std_id = forms.IntegerField(label='Student ID',required=True)
    fullname = forms.CharField(label=('Full Name'),required=True)
    nickname = forms.CharField(label=('Nick Name'),required=False)
    password = forms.CharField(label=('Enter Password'),widget=forms.PasswordInput,required = True)
    password_again = forms.CharField(label=('Retype Password'),widget=forms.PasswordInput,required=True) 
    email = forms.EmailField(label=('Email'),widget=forms.EmailInput,required=True)
    mobile = forms.IntegerField(label='Cell No',required=False)
    birthdate = forms.DateTimeField(label=('Date of Birth'),widget=forms.widgets.DateInput(attrs={'type': 'date'}),required=False)
    
        
    def clean(self):
        print('Cleaning')
        cleaned_data = super().clean()
        std_id = cleaned_data.get('std_id')
        print(std_id)
        password = cleaned_data.get('password')
        password2 = cleaned_data.get('password_again')
        email = cleaned_data.get('email')
        print(email)
        print(password)
        conn = db()
        c = conn.cursor()
        sql = """ SELECT STD_ID from USER_TABLE WHERE STD_ID = %(std_id)s"""
        c.execute(sql,{'std_id':std_id})
        row = c.fetchone()
        print(row)
        if row is not None:
            print('I am here')
            raise forms.ValidationError('User Already Exists...')
        if password_validator(password) != 'Success':
            print('wrong pass')
            raise forms.ValidationError(password_validator(password))

        if password2 != password:
            print('Not MAtch')
            raise forms.ValidationError('Password don\'t Match.')
        