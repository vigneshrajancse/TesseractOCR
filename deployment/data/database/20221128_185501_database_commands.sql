DROP INDEX "idx_system$image_submetaobjectname_asc";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'OCR.Image', 
"table_name" = 'ocr$image', 
"superentity_id" = '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '2849b5e0-efce-48f3-a395-138b7884e0d4';
ALTER TABLE "system$image" DROP COLUMN "submetaobjectname";
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '272f49fe-6a64-3ede-a32d-344a34e57b9f';
DELETE FROM "mendixsystem$index" 
 WHERE "id" = '00a9ec1c-4fab-368f-83d4-ffa8ff501c8c';
DELETE FROM "mendixsystem$index_column" 
 WHERE "index_id" = '00a9ec1c-4fab-368f-83d4-ffa8ff501c8c';
DELETE FROM "system$image" 
 WHERE "id" IN (SELECT "id"
 FROM "ocr$image");
DELETE FROM "system$thumbnail_image" 
 WHERE "system$imageid" IN (SELECT "id"
 FROM "ocr$image");
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221128 18:55:01';
