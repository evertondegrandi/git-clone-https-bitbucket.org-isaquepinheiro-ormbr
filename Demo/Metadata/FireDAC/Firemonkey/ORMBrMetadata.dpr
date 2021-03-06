program ORMBrMetadata;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrincipal in 'uPrincipal.pas' {Form4},
  ormbr.driver.connection in '..\..\..\..\Source\Drivers\ormbr.driver.connection.pas',
  ormbr.factory.connection in '..\..\..\..\Source\Drivers\ormbr.factory.connection.pas',
  ormbr.factory.interfaces in '..\..\..\..\Source\Drivers\ormbr.factory.interfaces.pas',
  ormbr.driver.firedac in '..\..\..\..\Source\Drivers\ormbr.driver.firedac.pas',
  ormbr.driver.firedac.transaction in '..\..\..\..\Source\Drivers\ormbr.driver.firedac.transaction.pas',
  ormbr.factory.firedac in '..\..\..\..\Source\Drivers\ormbr.factory.firedac.pas',
  ormbr.database.abstract in '..\..\..\..\Source\Metadata\ormbr.database.abstract.pas',
  ormbr.database.factory in '..\..\..\..\Source\Metadata\ormbr.database.factory.pas',
  ormbr.ddl.commands in '..\..\..\..\Source\Metadata\ormbr.ddl.commands.pas',
  ormbr.ddl.generator.firebird in '..\..\..\..\Source\Metadata\ormbr.ddl.generator.firebird.pas',
  ormbr.ddl.generator in '..\..\..\..\Source\Metadata\ormbr.ddl.generator.pas',
  ormbr.ddl.interfaces in '..\..\..\..\Source\Metadata\ormbr.ddl.interfaces.pas',
  ormbr.ddl.register in '..\..\..\..\Source\Metadata\ormbr.ddl.register.pas',
  ormbr.metadata.db.factory in '..\..\..\..\Source\Metadata\ormbr.metadata.db.factory.pas',
  ormbr.metadata.extract in '..\..\..\..\Source\Metadata\ormbr.metadata.extract.pas',
  ormbr.metadata.firebird in '..\..\..\..\Source\Metadata\ormbr.metadata.firebird.pas',
  ormbr.metadata.interbase in '..\..\..\..\Source\Metadata\ormbr.metadata.interbase.pas',
  ormbr.metadata.interfaces in '..\..\..\..\Source\Metadata\ormbr.metadata.interfaces.pas',
  ormbr.metadata.mssql in '..\..\..\..\Source\Metadata\ormbr.metadata.mssql.pas',
  ormbr.metadata.mysql in '..\..\..\..\Source\Metadata\ormbr.metadata.mysql.pas',
  ormbr.metadata.postgresql in '..\..\..\..\Source\Metadata\ormbr.metadata.postgresql.pas',
  ormbr.metadata.register in '..\..\..\..\Source\Metadata\ormbr.metadata.register.pas',
  ormbr.metadata.sqlite in '..\..\..\..\Source\Metadata\ormbr.metadata.sqlite.pas',
  ormbr.driver.dbexpress in '..\..\..\..\Source\Drivers\ormbr.driver.dbexpress.pas',
  ormbr.driver.dbexpress.transaction in '..\..\..\..\Source\Drivers\ormbr.driver.dbexpress.transaction.pas',
  ormbr.factory.dbexpress in '..\..\..\..\Source\Drivers\ormbr.factory.dbexpress.pas',
  ormbr.metadata.oracle in '..\..\..\..\Source\Metadata\ormbr.metadata.oracle.pas',
  ormbr.modeldb.compare in '..\..\..\..\Source\Metadata\ormbr.modeldb.compare.pas',
  ormbr.database.compare in '..\..\..\..\Source\Metadata\ormbr.database.compare.pas',
  ormbr.database.interfaces in '..\..\..\..\Source\Metadata\ormbr.database.interfaces.pas',
  ormbr.types.database in '..\..\..\..\Source\Core\ormbr.types.database.pas',
  ormbr.utils in '..\..\..\..\Source\Core\ormbr.utils.pas',
  ormbr.database.mapping in '..\..\..\..\Source\Metadata\ormbr.database.mapping.pas',
  ormbr.types.mapping in '..\..\..\..\Source\Core\ormbr.types.mapping.pas',
  ormbr.mapping.rttiutils in '..\..\..\..\Source\Core\ormbr.mapping.rttiutils.pas',
  ormbr.mapping.attributes in '..\..\..\..\Source\Core\ormbr.mapping.attributes.pas',
  ormbr.mapping.exceptions in '..\..\..\..\Source\Core\ormbr.mapping.exceptions.pas',
  ormbr.mapping.explorer in '..\..\..\..\Source\Core\ormbr.mapping.explorer.pas',
  ormbr.mapping.explorerstrategy in '..\..\..\..\Source\Core\ormbr.mapping.explorerstrategy.pas',
  ormbr.mapping.classes in '..\..\..\..\Source\Core\ormbr.mapping.classes.pas',
  ormbr.mapping.popular in '..\..\..\..\Source\Core\ormbr.mapping.popular.pas',
  ormbr.mapping.register in '..\..\..\..\Source\Core\ormbr.mapping.register.pas',
  ormbr.rtti.helper in '..\..\..\..\Source\Core\ormbr.rtti.helper.pas',
  ormbr.types.nullable in '..\..\..\..\Source\Core\ormbr.types.nullable.pas',
  ormbr.mapping.repository in '..\..\..\..\Source\Core\ormbr.mapping.repository.pas',
  ormbr.metadata.classe.factory in '..\..\..\..\Source\Metadata\ormbr.metadata.classe.factory.pas',
  ormbr.metadata.model in '..\..\..\..\Source\Metadata\ormbr.metadata.model.pas',
  ormbr.monitor in '..\..\..\..\Source\Drivers\ormbr.monitor.pas',
  ormbr.model.client in '..\..\Modelos\ormbr.model.client.pas',
  ormbr.model.detail in '..\..\Modelos\ormbr.model.detail.pas',
  ormbr.model.lookup in '..\..\Modelos\ormbr.model.lookup.pas',
  ormbr.model.master in '..\..\Modelos\ormbr.model.master.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
