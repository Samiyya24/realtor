import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreateResidenceTypeDto {
  @IsNotEmpty()
  @IsNumber()
  readonly object_type_id: number;

  @IsNotEmpty()
  @IsString()
  readonly name: string;
}
