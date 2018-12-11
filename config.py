POSTGRES = {
    'user': 'postgres',
    'pw': 'password',
    'db': 'dfx',
    'host': 'localhost',
    'port': '5433',
}

# SQLALCHEMY_DATABASE_URI = 'postgresql:///dfx'
SQLALCHEMY_DATABASE_URI = 'postgresql://%(user)s:%(pw)s@%(host)s:%(port)s/%(db)s' % POSTGRES

# SQLALCHEMY_DATABASE_URI = "postgresql://postgres:password@localhost/dfx"  # 'postgresql://shamikh3:dbpasswd@localhost/beers'
SQLALCHEMY_ECHO = True
DEBUG = True
SECRET_KEY = 'password'
SQLALCHEMY_TRACK_MODIFICATIONS = False
