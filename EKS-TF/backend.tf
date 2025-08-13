terraform {
  backend "s3" {
    bucket         = "metalslugBucket"               # Nom de ton bucket S3 ( deja existant )
    key            = "eks/terraform.tfstate"         # Emplacement/nom du fichier d'état
    region         = "eu-west-3"                     # Région AWS Paris (France)
    encrypt        = true                            # Chiffre le fichier d'état dans S3
    dynamodb_table = "terraform-lock"                # Table DynamoDB pour verrouiller l'état
  }
}

