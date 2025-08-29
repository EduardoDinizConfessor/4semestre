from django.shortcuts import render

# Create your views here.
from django.shortcuts import render
from rest_framework.viewsets import ModelViewSet
from .models import *
from .serializers import *


class CustomUserView(ModelViewSet):
    queryset = CustomUser.objects.all()
    serializer_class = CustomUserSerializer

class TokenView(ModelViewSet):
    queryset = Token.objects.all()
    serializer_class = TokenSerializer

class AccountView(ModelViewSet):
    queryset = Account.objects.all()
    serializer_class = AccountSerializer

class AccountTokenView(ModelViewSet):
    queryset = AccountToken.objects.all()
    serializer_class = AccountTokenSerializer

class BetsView(ModelViewSet):
    queryset = Bets.objects.all()
    serializer_class = BetsSerializer

class TransactionsView(ModelViewSet):
    queryset = Transactions.objects.all()
    serializer_class = TransactionsSerializer