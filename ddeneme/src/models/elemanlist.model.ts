import {Entity, model, property} from '@loopback/repository';

@model({settings: {postgresql: {schema: 'quarter2', table: 'my_model'},
}})
export class Elemanlist extends Entity {
  @property({
    type: 'number',






    me: {
      columnName: 'employeeid',
      dataType: 'integer',
      dataLength: null,
      dataPrecision: null,
      dataScale: 0,
      nullable: 'NO',
    },

    id: true,
    generated: false,
    required: true,
  })
  employeeid: number;









  @property({
    type: 'string',
    me: {
      columnName: 'employeename',
      dataType: 'text',
      dataLength: null,
      dataPrecision: null,
      dataScale: null,
      nullable: 'YES',
    },

  })
  employeename?: string;

  @property({
    type: 'string',
    me: {
      columnName: 'employeesurname',
      dataType: 'text',
      dataLength: null,
      dataPrecision: null,
      dataScale: null,
      nullable: 'YES',
    },

  })
  employeesurname?: string;

  @property({
    type: 'string',
    me: {
      columnName: 'employeeemail',
      dataType: 'text',
      dataLength: null,
      dataPrecision: null,
      dataScale: null,
      nullable: 'YES',
    },

  })
  employeeemail?: string;

  @property({
    type: 'string',

    me: {
      columnName: 'employeephone',
      dataType: 'text',
      dataLength: null,
      dataPrecision: null,
      dataScale: null,
      nullable: 'YES',
    },
  })
  employeephone?: string;

  @property({
    type: 'date',
    required: true,
    me: {
      columnName: 'employeehiredate',
      dataType: 'text',
      dataLength: null,
      dataPrecision: null,
      dataScale: null,
      nullable: 'YES',
    },
  })
  employeehiredate: string;

  @property({
    type: 'number',
    required: true,
    me: {
      columnName: 'employeesalary',
      dataType: 'integer',
      dataLength: null,
      dataPrecision: null,
      dataScale: 0,
      nullable: 'NO',
    },

  })
  employeesalary: number;

  @property({
    postgresql: {
      columnName: 'employeemanagerid',
      dataType: 'integer',
      dataLength: null,
      dataPrecision: null,
      dataScale: 0,
      nullable: 'YES',
    },
    type: 'number',
  })
  employeemanagerid?: number;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<Elemanlist>) {
    super(data);
  }
}

export interface ElemanlistRelations {
  // describe navigational properties here
}

export type ElemanlistWithRelations = Elemanlist & ElemanlistRelations;
