import { IsBoolean, IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreateObjectDto {
  @IsNotEmpty()
  @IsString()
  readonly name: string;

  @IsNotEmpty()

  @IsNotEmpty()
  @IsNumber()
  readonly realtor_id: number;

  @IsNotEmpty()
  @IsNumber()
  readonly object_type_id: number;

  @IsNotEmpty()
  @IsNumber()
  readonly residence_type_id: number;

  @IsNotEmpty()
  @IsNumber()
  readonly object_category_id: number;

  @IsNotEmpty()
  @IsNumber()
  readonly object_status_id: number;

  @IsNotEmpty()
  @IsBoolean()
  readonly is_studio: boolean;

  @IsNotEmpty()
  @IsNumber()
  readonly floor: number;

  @IsNotEmpty()
  @IsNumber()
  readonly floor_in_building: number;

  @IsNotEmpty()
  @IsNumber()
  readonly total_are: number;

  @IsNotEmpty()
  @IsNumber()
  readonly live_area: number;

  @IsNotEmpty()
  @IsNumber()
  readonly kitchen_area: number;

  @IsNotEmpty()
  @IsNumber()
  readonly rooms_area: number;

  @IsNotEmpty()
  @IsNumber()
  readonly price: number;

  @IsNotEmpty()
  @IsNumber()
  readonly currnecy_id: number;

  @IsNotEmpty()
  @IsNumber()
  readonly price_per_square: number;

  @IsNotEmpty()
  @IsNumber()
  readonly price_type: number;

  @IsNotEmpty()
  @IsNumber()
  readonly renovation_id: number;

  @IsNotEmpty()
  @IsNumber()
  readonly window_side_id: number;

  @IsNotEmpty()
  @IsNumber()
  readonly room_type_id: number;

  @IsNotEmpty()
  @IsBoolean()
  readonly is_appartment: boolean;

  @IsNotEmpty()
  @IsBoolean()
  readonly is_luxury: boolean;

  @IsNotEmpty()
  @IsNumber()
  readonly ceiling_height: number;

  @IsNotEmpty()
  @IsNumber()
  readonly combined_bath_count: number;

  @IsNotEmpty()
  @IsNumber()
  readonly separate_bath_count: number;

  @IsNotEmpty()
  @IsNumber()
  readonly loggia_count: number;

  @IsNotEmpty()
  @IsString()
  readonly loggia_description: string;

  @IsNotEmpty()
  @IsNumber()
  readonly balcony_count: number;

  @IsNotEmpty()
  @IsString()
  readonly balcony_description: string;

  @IsNotEmpty()
  @IsString()
  readonly general_description: string;

  @IsNotEmpty()
  @IsNumber()
  readonly cadastral_number: number;

  @IsNotEmpty()
  @IsString()
  readonly document: string;

  @IsNotEmpty()
  @IsString()
  readonly layout: string;

  @IsNotEmpty()
  @IsString()
  readonly fotos: string;

  @IsNotEmpty()
  @IsBoolean()
  readonly online_show: boolean;

  @IsNotEmpty()
  @IsString()
  readonly video: string;
}
