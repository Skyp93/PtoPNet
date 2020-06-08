unit USupport;

interface

type
  // События процедур
  TProcMain = procedure of object;
  /// НАПРИМЕР
  TProcMainParam = procedure(AStr: string) of object;

  TSQL = class
  public const
    CDefSqlPath: string = 'SELECT * FROM blablabla;';
    CDefSqlPath2: string = 'SELECT * FROM blablabla1;';
  end;

implementation

end.
