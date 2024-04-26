-- CreateTable
CREATE TABLE "objects" (
    "id" SERIAL NOT NULL,
    "is_studio" BOOLEAN NOT NULL,
    "floor" INTEGER NOT NULL,
    "floors_in_building" INTEGER NOT NULL,
    "total_area" DOUBLE PRECISION NOT NULL,
    "live_area" DOUBLE PRECISION NOT NULL,
    "kitchen_area" DOUBLE PRECISION NOT NULL,
    "rooms_area" DOUBLE PRECISION NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "price_per_square" INTEGER NOT NULL,
    "price_type" INTEGER NOT NULL,
    "is_appartment" BOOLEAN NOT NULL,
    "is_luxury" BOOLEAN NOT NULL,
    "ceiling_height" DOUBLE PRECISION NOT NULL,
    "combined_bath_count" INTEGER NOT NULL,
    "separate_bath_count" INTEGER NOT NULL,
    "loggia_cont" INTEGER NOT NULL,
    "loggia_description" TEXT NOT NULL,
    "balcony_count" INTEGER NOT NULL,
    "balcony_description" TEXT NOT NULL,
    "general_description" TEXT NOT NULL,
    "cadastral_number" INTEGER NOT NULL,
    "document" TEXT NOT NULL,
    "layout" TEXT NOT NULL,
    "fotos" TEXT NOT NULL,
    "online_show" BOOLEAN NOT NULL,
    "video" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "objects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "objectType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "objectType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "realtor" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "firma_id" INTEGER NOT NULL,
    "reg_date" TIMESTAMP(3) NOT NULL,
    "deactivate_date" TIMESTAMP(3) NOT NULL,
    "photo" TEXT NOT NULL,
    "login" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "realtor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "residenceType" (
    "id" SERIAL NOT NULL,
    "object_type_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "residenceType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "objectCategory" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "objectCategory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "objectStatus" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "objectStatus_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "currency" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "rate" DOUBLE PRECISION NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "currency_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "renovation" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "renovation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "windowSide" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "windowSide_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "roomType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "objectId" INTEGER,

    CONSTRAINT "roomType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ownerRealtion" (
    "id" SERIAL NOT NULL,
    "comission_amount" DOUBLE PRECISION NOT NULL,
    "comission_comment" TEXT NOT NULL,
    "deposit_amount" DOUBLE PRECISION NOT NULL,
    "deposit_paid" DOUBLE PRECISION NOT NULL,
    "owner_price_ideal" DOUBLE PRECISION NOT NULL,
    "owner_price_real" DOUBLE PRECISION NOT NULL,
    "owner_price_minimal" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ownerRealtion_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ownerShip" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "ownerRealtionId" INTEGER,

    CONSTRAINT "ownerShip_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "reasonDeleting" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "ownerRealtionId" INTEGER,

    CONSTRAINT "reasonDeleting_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ownerCooperation" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "ownerRealtionId" INTEGER,

    CONSTRAINT "ownerCooperation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "relationShipType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "ownerRealtionId" INTEGER,

    CONSTRAINT "relationShipType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "address" (
    "id" SERIAL NOT NULL,
    "area_id" INTEGER NOT NULL,
    "mahalla_id" INTEGER NOT NULL,
    "street_id" INTEGER NOT NULL,
    "house_number" INTEGER NOT NULL,
    "apartment_number" INTEGER NOT NULL,
    "locataion" TEXT NOT NULL,
    "landmark" TEXT NOT NULL,
    "location_description" TEXT NOT NULL,

    CONSTRAINT "address_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "region" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "addressId" INTEGER,

    CONSTRAINT "region_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "district" (
    "id" SERIAL NOT NULL,
    "region_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "addressId" INTEGER,

    CONSTRAINT "district_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "metro" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "addressId" INTEGER,

    CONSTRAINT "metro_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "buildingCharacter" (
    "id" SERIAL NOT NULL,
    "building_year" TIMESTAMP(3) NOT NULL,
    "is_gas" BOOLEAN NOT NULL,
    "is_electric" BOOLEAN NOT NULL,
    "passenger_elevators_count" INTEGER NOT NULL,
    "freight_elevators_count" INTEGER NOT NULL,
    "is_building_security" BOOLEAN NOT NULL,
    "is_demolition_planned" INTEGER NOT NULL,

    CONSTRAINT "buildingCharacter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "buildingCondition" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "buildingCharacterId" INTEGER,

    CONSTRAINT "buildingCondition_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "buildingSeria" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "buildingCharacterId" INTEGER,

    CONSTRAINT "buildingSeria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "wallMaterial" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "buildingCharacterId" INTEGER,

    CONSTRAINT "wallMaterial_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "overlaps" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "buildingCharacterId" INTEGER,

    CONSTRAINT "overlaps_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "waterSupply" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "buildingCharacterId" INTEGER,

    CONSTRAINT "waterSupply_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "heatingSystem" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "buildingCharacterId" INTEGER,

    CONSTRAINT "heatingSystem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "parking" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "buildingCharacterId" INTEGER,

    CONSTRAINT "parking_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "objectType" ADD CONSTRAINT "objectType_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "realtor" ADD CONSTRAINT "realtor_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "residenceType" ADD CONSTRAINT "residenceType_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "objectCategory" ADD CONSTRAINT "objectCategory_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "objectStatus" ADD CONSTRAINT "objectStatus_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "currency" ADD CONSTRAINT "currency_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "renovation" ADD CONSTRAINT "renovation_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "windowSide" ADD CONSTRAINT "windowSide_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "roomType" ADD CONSTRAINT "roomType_objectId_fkey" FOREIGN KEY ("objectId") REFERENCES "objects"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ownerShip" ADD CONSTRAINT "ownerShip_ownerRealtionId_fkey" FOREIGN KEY ("ownerRealtionId") REFERENCES "ownerRealtion"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reasonDeleting" ADD CONSTRAINT "reasonDeleting_ownerRealtionId_fkey" FOREIGN KEY ("ownerRealtionId") REFERENCES "ownerRealtion"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ownerCooperation" ADD CONSTRAINT "ownerCooperation_ownerRealtionId_fkey" FOREIGN KEY ("ownerRealtionId") REFERENCES "ownerRealtion"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "relationShipType" ADD CONSTRAINT "relationShipType_ownerRealtionId_fkey" FOREIGN KEY ("ownerRealtionId") REFERENCES "ownerRealtion"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "region" ADD CONSTRAINT "region_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "address"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "district" ADD CONSTRAINT "district_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "address"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "metro" ADD CONSTRAINT "metro_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "address"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "buildingCondition" ADD CONSTRAINT "buildingCondition_buildingCharacterId_fkey" FOREIGN KEY ("buildingCharacterId") REFERENCES "buildingCharacter"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "buildingSeria" ADD CONSTRAINT "buildingSeria_buildingCharacterId_fkey" FOREIGN KEY ("buildingCharacterId") REFERENCES "buildingCharacter"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "wallMaterial" ADD CONSTRAINT "wallMaterial_buildingCharacterId_fkey" FOREIGN KEY ("buildingCharacterId") REFERENCES "buildingCharacter"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "overlaps" ADD CONSTRAINT "overlaps_buildingCharacterId_fkey" FOREIGN KEY ("buildingCharacterId") REFERENCES "buildingCharacter"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "waterSupply" ADD CONSTRAINT "waterSupply_buildingCharacterId_fkey" FOREIGN KEY ("buildingCharacterId") REFERENCES "buildingCharacter"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "heatingSystem" ADD CONSTRAINT "heatingSystem_buildingCharacterId_fkey" FOREIGN KEY ("buildingCharacterId") REFERENCES "buildingCharacter"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "parking" ADD CONSTRAINT "parking_buildingCharacterId_fkey" FOREIGN KEY ("buildingCharacterId") REFERENCES "buildingCharacter"("id") ON DELETE SET NULL ON UPDATE CASCADE;
