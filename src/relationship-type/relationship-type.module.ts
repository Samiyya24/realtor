import { Module } from '@nestjs/common';
import { RelationshipTypeService } from './relationship-type.service';
import { RelationshipTypeController } from './relationship-type.controller';
import { PrismaModule } from '../prisma/prisma.module';

@Module({
  imports:[PrismaModule],
  controllers: [RelationshipTypeController],
  providers: [RelationshipTypeService],
})
export class RelationshipTypeModule {}
