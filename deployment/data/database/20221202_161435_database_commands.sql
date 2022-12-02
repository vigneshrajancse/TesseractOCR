ALTER TABLE "ocr$image" RENAME TO "tesseractocr$image";
UPDATE "system$image"
 SET "submetaobjectname" = 'TesseractOCR.Image'
 WHERE "submetaobjectname" = 'OCR.Image';
UPDATE "system$filedocument"
 SET "submetaobjectname" = 'TesseractOCR.Image'
 WHERE "submetaobjectname" = 'OCR.Image';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'TesseractOCR.Image', 
"table_name" = 'tesseractocr$image', 
"superentity_id" = '37827192-315d-4ab6-85b8-f626f866ea76', 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '2849b5e0-efce-48f3-a395-138b7884e0d4';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221202 16:14:35';
