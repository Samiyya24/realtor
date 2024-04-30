import { IsNotEmpty, IsString } from "class-validator";

export class CreateReasonDeletingDto {
  @IsNotEmpty()
  @IsString()
  readonly name: string;
}
