import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateDistrictDto {
  @IsNotEmpty()
  @IsNumber()
  readonly region_id: number;

  @IsNotEmpty()
  @IsString()
  readonly name: string;
}
