import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { PrismaModule } from './prisma/prisma.module';
import { ObjectTypeModule } from './object-type/object-type.module';

@Module({
  imports: [
    ConfigModule.forRoot({ envFilePath: '.env', isGlobal: true }),
    PrismaModule,
    ObjectTypeModule,
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
