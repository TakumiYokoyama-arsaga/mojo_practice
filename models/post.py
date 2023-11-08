import sqlalchemy as sa

from db.database import Base


# テスト用モデル
class Post(Base):
  __tablename__ = 'post'

  id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
  title = sa.Column(sa.String(255), nullable=False)
  body = sa.Column(sa.Text, nullable=False)
  is_deleted = sa.Column(sa.Boolean, default=False, nullable=False)