unit USupport;

interface

type
  // ������� ��������
  TProcMain = procedure of object;
  /// ��������
  TProcMainParam = procedure(AStr: string) of object;

  TSQL = class
  public const
    CDefSqlPath: string = 'SELECT * FROM blablabla;';
    CDefSqlPath2: string = 'SELECT * FROM blablabla1;';
  end;

implementation

end.
