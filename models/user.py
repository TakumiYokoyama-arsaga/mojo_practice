import sqlalchemy as sa

from db.database import Base


# テスト用モデル
class User(Base):
  __tablename__ = 'users'

  id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
  name = sa.Column(sa.String(255), nullable=False)
  email = sa.Column(sa.String(255), nullable=False)
  password = sa.Column(sa.String(255), nullable=False)