import { IsNotEmpty, IsString } from "class-validator";

export class CreateRelationshipTypeDto {
  @IsNotEmpty()
  @IsString()
  readonly name: string;
}
