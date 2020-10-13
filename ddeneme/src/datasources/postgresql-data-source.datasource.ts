import {inject, lifeCycleObserver, LifeCycleObserver} from '@loopback/core';
import {juggler} from '@loopback/repository';

const config = {
  name: 'PostgresqlDataSource',
  connector: 'postgresql',
  url: '',
  host: 'localhost',
  port: 5432,
  user: 'me',
  password: '123',
  database: 'denemeee',
  min: 5,
  max: 200,
  idleTimeoutMillis: 60000,
  ssl: false
};

// Observe application's life cycle to disconnect the datasource when
// application is stopped. This allows the application to be shut down
// gracefully. The `stop()` method is inherited from `juggler.DataSource`.
// Learn more at https://loopback.io/doc/en/lb4/Life-cycle.html
@lifeCycleObserver('datasource')
export class PostgresqlDataSourceDataSource extends juggler.DataSource
  implements LifeCycleObserver {
  static dataSourceName = 'PostgresqlDataSource';
  static readonly defaultConfig = config;

  constructor(
    @inject('datasources.config.PostgresqlDataSource', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}
