import {
  Count,
  CountSchema,
  Filter,
  FilterExcludingWhere,
  repository,
  Where,
} from '@loopback/repository';
import {
  post,
  param,
  get,
  getModelSchemaRef,
  patch,
  put,
  del,
  requestBody,
} from '@loopback/rest';
import {Elemanlist} from '../models';
import {ElemanlistRepository} from '../repositories';

export class ElemanEklemeControllerController {
  constructor(
    @repository(ElemanlistRepository)
    public elemanlistRepository : ElemanlistRepository,
  ) {}

  @post('/elemanlists', {
    responses: {
      '200': {
        description: 'Elemanlist model instance',
        content: {'application/json': {schema: getModelSchemaRef(Elemanlist)}},
      },
    },
  })
  async create(
    @requestBody({
      content: {
        'application/json': {
          schema: getModelSchemaRef(Elemanlist, {
            title: 'NewElemanlist',
            
          }),
        },
      },
    })
    elemanlist: Elemanlist,
  ): Promise<Elemanlist> {
    return this.elemanlistRepository.create(elemanlist);
  }

  @get('/elemanlists/count', {
    responses: {
      '200': {
        description: 'Elemanlist model count',
        content: {'application/json': {schema: CountSchema}},
      },
    },
  })
  async count(
    @param.where(Elemanlist) where?: Where<Elemanlist>,
  ): Promise<Count> {
    return this.elemanlistRepository.count(where);
  }

  @get('/elemanlists', {
    responses: {
      '200': {
        description: 'Array of Elemanlist model instances',
        content: {
          'application/json': {
            schema: {
              type: 'array',
              items: getModelSchemaRef(Elemanlist, {includeRelations: true}),
            },
          },
        },
      },
    },
  })
  async find(
    @param.filter(Elemanlist) filter?: Filter<Elemanlist>,
  ): Promise<Elemanlist[]> {
    return this.elemanlistRepository.find(filter);
  }

  @patch('/elemanlists', {
    responses: {
      '200': {
        description: 'Elemanlist PATCH success count',
        content: {'application/json': {schema: CountSchema}},
      },
    },
  })
  async updateAll(
    @requestBody({
      content: {
        'application/json': {
          schema: getModelSchemaRef(Elemanlist, {partial: true}),
        },
      },
    })
    elemanlist: Elemanlist,
    @param.where(Elemanlist) where?: Where<Elemanlist>,
  ): Promise<Count> {
    return this.elemanlistRepository.updateAll(elemanlist, where);
  }

  @get('/elemanlists/{id}', {
    responses: {
      '200': {
        description: 'Elemanlist model instance',
        content: {
          'application/json': {
            schema: getModelSchemaRef(Elemanlist, {includeRelations: true}),
          },
        },
      },
    },
  })
  async findById(
    @param.path.number('id') id: number,
    @param.filter(Elemanlist, {exclude: 'where'}) filter?: FilterExcludingWhere<Elemanlist>
  ): Promise<Elemanlist> {
    return this.elemanlistRepository.findById(id, filter);
  }

  @patch('/elemanlists/{id}', {
    responses: {
      '204': {
        description: 'Elemanlist PATCH success',
      },
    },
  })
  async updateById(
    @param.path.number('id') id: number,
    @requestBody({
      content: {
        'application/json': {
          schema: getModelSchemaRef(Elemanlist, {partial: true}),
        },
      },
    })
    elemanlist: Elemanlist,
  ): Promise<void> {
    await this.elemanlistRepository.updateById(id, elemanlist);
  }

  @put('/elemanlists/{id}', {
    responses: {
      '204': {
        description: 'Elemanlist PUT success',
      },
    },
  })
  async replaceById(
    @param.path.number('id') id: number,
    @requestBody() elemanlist: Elemanlist,
  ): Promise<void> {
    await this.elemanlistRepository.replaceById(id, elemanlist);
  }

  @del('/elemanlists/{id}', {
    responses: {
      '204': {
        description: 'Elemanlist DELETE success',
      },
    },
  })
  async deleteById(@param.path.number('id') id: number): Promise<void> {
    await this.elemanlistRepository.deleteById(id);
  }
}
