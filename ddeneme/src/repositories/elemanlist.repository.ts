import {DefaultCrudRepository} from '@loopback/repository';
import {Elemanlist, ElemanlistRelations} from '../models';
import {PostgresqlDataSourceDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class ElemanlistRepository extends DefaultCrudRepository<
  Elemanlist,
  typeof Elemanlist.prototype.employeeid,
  ElemanlistRelations
> {
  constructor(
    @inject('datasources.PostgresqlDataSource') dataSource: PostgresqlDataSourceDataSource,
  ) {
    super(Elemanlist, dataSource);
  }
}
