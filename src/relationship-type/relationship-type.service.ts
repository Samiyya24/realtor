import { Injectable } from '@nestjs/common';
import { CreateRelationshipTypeDto } from './dto/create-relationship-type.dto';
import { UpdateRelationshipTypeDto } from './dto/update-relationship-type.dto';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class RelationshipTypeService {
 constructor(private readonly prismaService: PrismaService) {}

  create(createRelationshipTypeDto: CreateRelationshipTypeDto) {
    return this.prismaService.relationShipType.create({
      data: createRelationshipTypeDto,
    });
  }

  findAll() {
    return this.prismaService.relationShipType.findMany();
  }

  findOne(id: number) {
    return this.prismaService.relationShipType.findUnique({
      where: {
        id,
      },
    });
  }

  update(id: number, updateRelationshipTypeDto: UpdateRelationshipTypeDto) {
    return this.prismaService.relationShipType.update({
      where: {
        id,
      },
      data: updateRelationshipTypeDto,
    });
  }

  remove(id: number) {
    return this.prismaService.relationShipType.delete({
      where: {
        id,
      },
    });
  }
}
