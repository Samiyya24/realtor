import { IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateCurrencyDto {
  @IsNotEmpty()
  @IsString()
  readonly name: string;

  @IsNotEmpty()
  @IsNumber()
  readonly rate: number;
}
