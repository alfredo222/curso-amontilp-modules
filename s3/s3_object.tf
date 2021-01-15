resource "aws_s3_bucket_object" "s3_object" {
  for_each = var.file_list

  bucket = var.bucketName
  key    = each.value.key //ruta donde se va a copiar el archivo en el bucket
  source = each.value.source //ruta del archivo que voy a copiar al bucket
}